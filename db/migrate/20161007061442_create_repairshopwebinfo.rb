class CreateRepairshopwebinfo < ActiveRecord::Migration
  def change
    create_table :repairshopwebinfos do |t|
      t.integer :repairshop_id
      t.text    :webservice
      t.text    :link
      t.timestamps
    end
  end
end
