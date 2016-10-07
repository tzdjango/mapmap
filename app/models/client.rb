class Client < ActiveRecord::Base
  has_one :clientcontactinfo, dependent: :destroy
  has_one :clientaddress, dependent: :destroy
  has_one :userauth, dependent: :destroy
  has_one :ownershiphistory, dependent: :destroy
  has_many :metamessages, dependent: :destroy
end