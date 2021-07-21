class UserSprout < ActiveRecord::Base
    belongs_to :user 
    belongs_to :sprout
end