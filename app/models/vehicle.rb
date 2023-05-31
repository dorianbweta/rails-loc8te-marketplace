class Vehicle < ApplicationRecord
  has_many :bookings
  belongs_to :business
  has_many_attached :photos
end
