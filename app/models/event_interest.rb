class EventInterest < ApplicationRecord
  belongs_to :interest
  belongs_to :event


  def token
    JWT.encode({ user_id: self.id }, 'secret')
end
end
