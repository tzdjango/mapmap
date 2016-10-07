class CreateRepairshopbalance < ActiveRecord::Migration
  def change
    create_table :repairshopbalances do |t|
      t.integer :repairshop_id
      t.float   :credit
      t.float   :debit
      t.text    :action
      t.timestamps
    end
  end
end
