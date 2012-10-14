class Feature < ActiveRecord::Base
  include ModelUtil

  belongs_to :device
  has_many :votes

  attr_accessible :device_id, :body, :status
end
