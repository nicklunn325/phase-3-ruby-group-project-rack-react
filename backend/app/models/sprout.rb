class Sprout < ActiveRecord::Base
    has_many :user_sprouts
    has_many :users, through: :user_sprouts
end