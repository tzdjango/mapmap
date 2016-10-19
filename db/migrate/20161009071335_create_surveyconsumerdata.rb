class CreateSurveyconsumerdata < ActiveRecord::Migration
  def change
    create_table :surveyconsumerdata do |t|
      t.integer :surveyconsumer_id
      t.float   :xcoord
      t.float   :ycoord
      t.timestamps
    end
  end
end
