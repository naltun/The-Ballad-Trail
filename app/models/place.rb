class Place < ActiveRecord::Base

	has_many :poems
	has_many :songs
	
	validates :latitude, presence: true
	validates :longitude, presence: true 
end
