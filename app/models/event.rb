class Event < ApplicationRecord
    has_many :user_events
    has_many :organizers, through: :user_events, class_name: 'User', source: :user
    has_many :user_arrangements
    has_many :attendees, through: :user_arrangements, class_name: 'User', source: :user
    has_many :event_interests
    has_many :interests, through: :event_interests

    def token
        JWT.encode({ user_id: self.id }, 'secret')
    end

end
