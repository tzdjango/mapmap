class Price < ActiveRecord::Base
  belongs_to :repairshop
  belongs_to :repairshopproduct
  has_one :offer, dependent: :destroy
end