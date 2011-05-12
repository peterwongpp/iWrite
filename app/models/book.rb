class Book < ActiveRecord::Base
  def publish
    self.update_attribute(:published_at, Date.today)
  end
  
  def unpublish
    self.update_attribute(:published_at, nil)
  end
end
