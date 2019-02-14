class User < ApplicationRecord
    has_secure_password
    has_many :user_events
    has_many :events, through: :user_events
    has_many :user_arrangements
    has_many :events, through: :user_arrangements
    has_many :user_interests
    has_many :interests, through: :user_interests

    def token
        JWT.encode({ user_id: self.id }, 'secret')
    end

end
