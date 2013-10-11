class Todo < ActiveRecord::Base
  validates :name, presence: true

  def completed?
    self.completed
  end

end