class Poem < ActiveRecord::Base

	belongs_to :end_user
	belongs_to :place
	belongs_to :composer

	has_attached_file :medialink,
	:storage => :s3,
	:bucket => ENV['S3_BUCKET_NAME'],
	:s3_credentials => {
		:access_key_id => ENV['AWS_ACCESS_KEY_ID'],
		:secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']
	}

	validates_attachment_content_type :medialink, :content_type => /.*/
	
	validates :title, presence: true
	validates :subtitle, presence: true

end