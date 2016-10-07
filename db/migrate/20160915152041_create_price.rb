class CreatePrice < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.integer:repairshop_id
      t.integer:repairshopproduct_id
      t.float  :realprice
      t.integer:autoresponse
      t.timestamps
    end
  end
end
