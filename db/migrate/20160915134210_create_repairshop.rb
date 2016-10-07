class CreateRepairshop < ActiveRecord::Migration
  def change
    create_table :repairshops do |t|
      t.text  :name
      t.text  :companyid
      t.timestamps
    end
  end
end
