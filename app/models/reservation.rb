class Reservation < ApplicationRecord
  belongs_to :person
  belongs_to :event
end
