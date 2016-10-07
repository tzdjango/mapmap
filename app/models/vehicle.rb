class Vehicle < ActiveRecord::Base
    has_many :ownershiphistory, dependent: :destroy
    has_one  :messagemeta, dependent: :destroy
    has_many :regnumhistory, dependent: :destroy
    has_many :servicehistory, dependent: :destroy
end