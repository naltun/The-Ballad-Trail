class Song < ActiveRecord::Base

	belongs_to :end_user
	belongs_to :place
	belongs_to :composer

	validates :title, presence: true
	validates :link, presence: true
end
