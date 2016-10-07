class Reservation < ActiveRecord::Base
  belongs_to :repairshop
  belongs_to :repairshopproduct
  belongs_to :clientauth
end