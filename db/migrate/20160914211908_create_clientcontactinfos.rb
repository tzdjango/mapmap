class CreateClientcontactinfos < ActiveRecord::Migration
  def change
    create_table :clientcontactinfos do |t|
      t.integer :client_id
      t.text :service
      t.text :link
      t.timestamps
    end
  end
end
