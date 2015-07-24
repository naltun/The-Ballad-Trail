class Song < ActiveRecord::Base

	belongs_to :end_user
	belongs_to :place
	belongs_to :composer

	has_attached_file :medialink
	validates_attachment_content_type :medialink, content_type: /\Aaudio/

	validates :title, presence: true
	validates :lyrics, presence: true
	
end
