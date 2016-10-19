class Surveyconsumer < ActiveRecord::Base
  has_many :surveyconsumerdatas, dependent: :destroy
end