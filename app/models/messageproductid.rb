class Messageproductid < ActiveRecord::Base
  belongs_to :repairshopproduct
  belongs_to :message
end