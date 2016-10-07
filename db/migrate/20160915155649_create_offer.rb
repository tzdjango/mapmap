class CreateOffer < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.integer   :price_id
      t.float     :offerprice
      t.float     :offerpercentage
      t.datetime  :offerstart
      t.datetime  :offerend
      t.timestamps
    end
  end
end
