class Business < ApplicationRecord
  has_many :vehicles
  belongs_to :user
end
