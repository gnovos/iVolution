class Vote < ActiveRecord::Base
  include ModelUtil

  belongs_to :device
  belongs_to :feature

  attr_accessible :device_id, :feature_id, :points
end
