class CreateClientaddress < ActiveRecord::Migration
  def change
    create_table :clientaddresses do |t|
      t.integer :client_id
      t.text    :streetaddress
      t.text    :zipcode
      t.text    :city
      t.text    :country
      t.timestamps
    end
  end
end
