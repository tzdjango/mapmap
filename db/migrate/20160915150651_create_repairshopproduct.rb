class CreateRepairshopproduct < ActiveRecord::Migration
  def change
    create_table :repairshopproducts do |t|
      t.text    :description
      t.timestamps
    end
  end
end
