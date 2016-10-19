class Gasstations < ActiveRecord::Base
  has_many :gasprices, dependent: :destroy
  before_save { self.email = email.downcase }
end