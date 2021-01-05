class Destination < ApplicationRecord
    # validates :name, uniqueness: true
    # validates :name, :zipcode, :price, :available, :description, :capacity, presence: true

    belongs_to :user
end
