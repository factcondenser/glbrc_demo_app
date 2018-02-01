class Application < ApplicationRecord
  has_many :links
  has_many :users, through: :links

  def on_home_of?(user_id)
    user = User.find(user_id)
    self.users.include?(user)
  end

end
