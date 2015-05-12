class Location < ActiveRecord::Base
  belongs_to :game
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?

end
