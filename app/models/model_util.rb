module ModelUtil
  def default_name
    "#{self.class} - #{self.id}"
  end
end
