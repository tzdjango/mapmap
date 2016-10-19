class CreateSurveyconsumer < ActiveRecord::Migration
  def change
    create_table :surveyconsumers do |t|
      t.text :email
      t.text :regnum
      t.text :deviceinfo
    end
  end
end
