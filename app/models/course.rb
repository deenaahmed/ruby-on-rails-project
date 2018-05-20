class Course < ApplicationRecord
    belongs_to :user
    has_many :lectures
  def user=(new_user)
    self.old_user = self.user
    super
  end

end
