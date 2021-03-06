class Owner < ApplicationRecord
    has_many :horses
    has_many :rides, through: :horses
    belongs_to :user

    validates :name, presence: true
end
