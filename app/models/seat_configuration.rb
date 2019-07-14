class SeatConfiguration < ApplicationRecord
  belongs_to :aeroplane
  has_many :seat_groups
end
