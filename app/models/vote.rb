class Vote < ActiveRecord::Base
  belongs_to :device
  belongs_to :feature

  attr_accessible :device, :feature, :points
end
