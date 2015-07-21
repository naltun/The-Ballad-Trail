class Poem < ActiveRecord::Base

	belongs_to :end_user
	belongs_to :place
	belongs_to :composer

	validates :title, presence: true
	validates :subtitle, presence: true

	has_attached_file :medialink
	validates_attachment_presence :medialink
	validates_attachment_content_type :medialink, :content_type => [ 'audio/mp3','audio/mpeg','video/mp4']
end
