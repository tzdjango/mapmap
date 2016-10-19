class CreateGasstation < ActiveRecord::Migration
  def change
    create_table :gasstations do |t|
      t.text :chain
      t.text :name
      t.text :streetaddress
      t.text :zipcode
      t.text :city
      t.text :country
      t.string :email
      t.float :xcoord
      t.float :ycoord
    end
  end
end
