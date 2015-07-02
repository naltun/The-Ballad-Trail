class Composer < ActiveRecord::Base
	
	has_many :songs
	has_many :poems

	validates :fname, presence: true
	validates :lname, presence: true
end
