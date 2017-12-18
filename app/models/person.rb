class Person < ApplicationRecord
  has_many :reservations
  has_many :events, through: :reservations
end
