class CreateOwnershiphistory < ActiveRecord::Migration
  def change
    create_table :ownershiphistories do |t|
      t.integer   :client_id
      t.text      :vin
      t.datetime  :startdate
      t.datetime  :enddate
      t.text      :vehiclename
      t.text      :imageurl
      t.boolean   :obsolete
      t.timestamps
    end
  end
end
