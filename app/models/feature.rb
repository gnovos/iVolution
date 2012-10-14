class Feature < ActiveRecord::Base
  belongs_to :device
  has_many :votes

  attr_accessible :device, :body, :status
end
