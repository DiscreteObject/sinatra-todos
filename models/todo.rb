class Todo < ActiveRecord::Base
  def completed?
    p self.completed
    self.completed
  end

end