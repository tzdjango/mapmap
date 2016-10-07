class CreateCapacity < ActiveRecord::Migration
  def change
    create_table :capacities do |t|
      t.integer   :repairshop_id
      t.timestamp :starttime
      t.timestamp :endtime
      t.integer   :totalcapacity
      t.timestamps
    end
  end
end
