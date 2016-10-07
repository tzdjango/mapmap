class CreateMessageproductid < ActiveRecord::Migration
  def change
    create_table :messageproductids do |t|
      t.integer :message_id
      t.integer :repairshopproduct_id
      t.timestamps
    end
  end
end
