class User < ApplicationRecord
    has_one :profile

    validates :phone_number, :email,  presence: true
    validates :phone_number, :email, uniqueness: true
end
