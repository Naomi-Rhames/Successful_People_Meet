class Profile < ApplicationRecord
    belongs_to :user

    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :age, presence: true
    validates :status, presence: true
    validates :location, presence: true
    validates :about_me, presence: true
    validates :occupation, presence: true
    validates :hobbies, presence: true
    
end
