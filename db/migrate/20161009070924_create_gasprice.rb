class CreateGasprice < ActiveRecord::Migration
  def change
    create_table :gasprices do |t|
      t.float   :price
      t.text    :quality
      t.timestamps
    end
  end
end
