class CreateVehicle < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.text :vincode
      t.text :mark
      t.text :model
      t.text :year
      t.text :fuel
      t.text :regnum
      t.integer :kw
      t.integer :cylcap
      t.date    :regdate
      t.boolean :obsolete
      t.timestamps
    end
  end
end
