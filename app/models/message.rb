class Message < ActiveRecord::Base
  has_one  :messageproductid
  has_one  :metamessage
end