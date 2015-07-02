class Composer < ActiveRecord::Base
	validates :fname, presence: true
	validates :lname, presence: true
end
