class CreateOwnershiphistory < ActiveRecord::Migration
  def change
    create_table :ownershiphistories do |t|
      t.integer   :client_id
      t.integer   :vehicle_id
      t.text      :vin
      t.timestamp :startdate
      t.timestamp :enddate
      t.text      :vehiclename
      t.text      :imageurl
      t.boolean   :obsolete
      t.timestamps
    end
  end
end
