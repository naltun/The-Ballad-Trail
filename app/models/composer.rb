class Composer < ActiveRecord::Base

	belongs_to :end_user
	
	has_many :songs
	has_many :poems
	has_many :places, through: :songs
	has_many :places, through: :poems

	validates :fname, presence: true
	validates :lname, presence: true
end

