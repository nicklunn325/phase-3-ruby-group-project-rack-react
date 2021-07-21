class User < ActiveRecord::Base
    has_many :user_sprouts
    has_many :sprouts, through: :user_sprouts

    def live_sprouts
        self.user_sprouts.where(is_live?: :true)
    end
end