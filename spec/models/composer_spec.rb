require 'rails_helper'

describe Composer do
	it 'has a valid factory' do
		expect(build(:composer)).to be_valid
	end

	it 'is invalid without a firstname (as fname) and lastname (as lname)' do
		composer = Composer.new(fname: nil, lname: nil)
		composer.valid?
		expect(composer.valid? == false)
	end

	it "ins invalid without an end_user_id" do
		composer = Composer.new(end_user_id: nil)
		composer.valid?
		expect(composer.valid? == false)
	end
	
	it "is invalid without a composer type" do
		composer = Composer.new(composer_type: nil)
		composer.valid?
		expect(composer.valid? == false)
	end

	it "is invalid without a bio" do
		composer = Composer.new(bio: nil)
		composer.valid?
		expect(composer.valid? == false)
	end

#RSpec.describe Composer, :type => :model do
  #pending "add some examples to (or delete) #{__FILE__}"
end
