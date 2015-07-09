class Composer < ActiveRecord::Base

	belongs_to :end_user
	
	has_many :songs
	has_many :poems

	validates :fname, presence: true
	validates :lname, presence: true
end
