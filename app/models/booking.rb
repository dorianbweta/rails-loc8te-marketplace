class Booking < ApplicationRecord
  belongs_to :user_id
  belongs_to :vehicle_id
end
