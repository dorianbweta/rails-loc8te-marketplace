class Vehicle < ApplicationRecord
  has_many :bookings
  belongs_to :business
end
