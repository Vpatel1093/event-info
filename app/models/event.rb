class Event < ApplicationRecord
  has_many :reservations
  has_many :people, through: :reservations
end
