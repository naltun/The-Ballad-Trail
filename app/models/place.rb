class Place < ActiveRecord::Base

	belongs_to :end_user

	has_many :poems
	has_many :songs
	
	validates :latitude, presence: true
	validates :longitude, presence: true 
end
