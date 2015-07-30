class Place < ActiveRecord::Base
	
	belongs_to :end_user

	has_many :poems
	has_many :songs
	has_many :composers, through: :songs
	has_many :composers, through: :poems

	has_attached_file :image,
	styles: { large: "600x600>", medium: "300x300>", thumb: "150x150#" },
	:storage => :s3,
	:url => ":s3_domain_url",
	:path => "docs/:id/:filename",
	:s3_credentials => {
		:bucket => ENV['S3_BUCKET_NAME'],
		:access_key_id => ENV['AWS_ACCESS_KEY_ID'],
		:secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']
	}

	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

	validates :latitude, presence: true
	validates :longitude, presence: true 
end