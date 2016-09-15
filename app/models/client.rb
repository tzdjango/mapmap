class Client < ActiveRecord::Base
  has_many :clientcontactinfo, dependent: :destroy
  has_many :clientaddress, dependent: :destroy
  has_many :userauth, dependent: :destroy
end