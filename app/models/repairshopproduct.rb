class Repairshopproduct < ActiveRecord::Base
  has_one  :messageproductid
  has_many :reservations
  has_one  :price
end