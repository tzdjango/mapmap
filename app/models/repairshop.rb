class Repairshop < ActiveRecord::Base
  has_many :reservations, dependent: :destroy
  has_many :prices, dependent: :destroy
  has_many :metamessages, dependent: :destroy
  has_many :capacities, dependent: :destroy
  has_many :feedbacks, dependent: :destroy 
  has_one  :repairshopbalance, dependent: :destroy
  has_many :repairshopcontactinfos, dependent: :destroy
  has_many :repairshopwebinfos, dependent: :destroy
end