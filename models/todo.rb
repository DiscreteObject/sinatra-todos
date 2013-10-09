class Todo < ActiveRecord::Base
  def completed?
    self.completed
  end

end