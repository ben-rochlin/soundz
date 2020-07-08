class User < ApplicationRecord
    has_many :user_sounds, dependent: :destroy
    has_many :sounds, through: :user_sounds   
end
