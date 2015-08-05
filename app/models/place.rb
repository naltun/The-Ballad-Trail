class Place < ActiveRecord::Base
	
	belongs_to :end_user

	has_many :poems
	has_many :songs
	has_many :composers, through: :songs
	has_many :composers, through: :poems
	has_many :comments, as: :commentable

	validates :latitude, presence: true
	validates :longitude, presence: true 
end