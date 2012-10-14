class Device < ActiveRecord::Base
  has_many :features
  has_many :votes

  attr_accessible :device_id
end
