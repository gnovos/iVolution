class Device < ActiveRecord::Base
  include ModelUtil

  has_many :features
  has_many :votes

  attr_accessible :identifier

  def default_name
    identifier
  end
end
