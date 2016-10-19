class AddGasstationIdToGasprices < ActiveRecord::Migration
  def change
    add_column :gasprices, :gasstation_id, :integer
  end
end
