class Poem < ActiveRecord::Base
	
	belongs_to :end_user
	belongs_to :place
	belongs_to :composer

	has_attached_file :medialink,
	default_url: "/poems/:attachment/lassobennachie.mp3"
	bucket: "ballad-trail" 
	validates_attachment_content_type :medialink, content_type: /\Aaudio/

	validates :title, presence: true
	validates :subtitle, presence: true

end
