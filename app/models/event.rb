class Event < ApplicationRecord
    has_many :user_events
    has_many :users, through: :user_events
    has_many :user_arrangements
    has_many :users, through: :user_arrangements
    has_many :event_interests
    has_many :interests, through: :event_interests

    def token
        JWT.encode({ user_id: self.id }, 'secret')
    end

end
