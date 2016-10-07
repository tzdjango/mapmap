class CreateRepairshopcontactinfo < ActiveRecord::Migration
  def change
    create_table :repairshopcontactinfos do |t|
      t.integer :repairshop_id
      t.text  :streetaddress
      t.text  :zipcode
      t.text  :city
      t.text  :fixedtelephone
      t.text  :mobiletelephone
      t.float   :xcoord
      t.float   :ycoord
      t.timestamps
    end
  end
end
