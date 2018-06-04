class NearestStation < ApplicationRecord
  belongs_to :property
  validates :line_name, presence: true
  validates :station_name, presence: true
  validates :walk_minute, presence: true
  
end
