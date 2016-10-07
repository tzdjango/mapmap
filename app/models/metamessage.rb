class Metamessage < ActiveRecord::Base
  belongs_to :client
  belongs_to :repairshop
  belongs_to :message
end