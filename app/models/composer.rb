class Composer < ActiveRecord::Base
self.inheritance_column = :_type_disabled

	belongs_to :end_user
	
	has_many :songs
	has_many :poems

	validates :fname, presence: true
	validates :lname, presence: true
end
