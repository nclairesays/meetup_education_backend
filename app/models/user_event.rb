class UserEvent < ApplicationRecord
  belongs_to :user
  belongs_to :event


  def token
    JWT.encode({ user_id: self.id }, 'secret')
  end
end
