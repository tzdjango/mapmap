class CreateRegnumhistory < ActiveRecord::Migration
  def change
    create_table :regnumhistories do |t|
      t.integer :vehicle_id
      t.text    :vin
      t.text    :regnum
      t.text    :country
      t.date    :startdate
      t.date    :enddate
      t.timestamps
    end
  end
end
