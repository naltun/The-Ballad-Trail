class Song < ActiveRecord::Base

	belongs_to :end_user
	belongs_to :place
	belongs_to :composer

	validates :title, presence: true
	validates :link, presence: true

	#has_attached_file :link
	#validates_attachment_presence :link
	#validates_attachment_content_type :link, :content_type => [ 'audio/mp3','audio/mpeg']
end
