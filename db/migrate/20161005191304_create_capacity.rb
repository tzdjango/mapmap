class CreateCapacity < ActiveRecord::Migration
  def change
    create_table :capacities do |t|
      t.integer :repairshop_id
      t.datetime:starttime
      t.datetime:endtime
      t.integer:totalcapacity
      t.timestamps
    end
  end
end
