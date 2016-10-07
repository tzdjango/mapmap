class CreateServicehistory < ActiveRecord::Migration
  def change
    create_table :servicehistories do |t|
      t.integer :vehicle_id
      t.text    :vin
      t.text    :servicedby
      t.text    :serviceaction
      t.date    :servicedate
      t.timestamps
    end
  end
end
