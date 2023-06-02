class Vehicle < ApplicationRecord
  include PgSearch::Model
  has_many :bookings
  belongs_to :business
  has_many_attached :photos

  pg_search_scope :search_by_model_and_driver_name,
    against: [ :model, :driver_name ],
    using: {
      tsearch: { prefix: true }
    };

  validates :photos, length: { minimum: 3, message: "Please upload at least 3 photos" }
end
