require 'rails_helper'

describe Composer do
	it 'has a valid factory' do
		expect(FactoryGirl.build(:composer)).to be_valid
	end

	it 'is invalid without a firstname (as fname) and lastname (as lname)' do
		composer = FactoryGirl.build(:composer, fname: nil, lname: nil)
		composer.valid?
		expect(composer.valid?).to eq false
	end

	it "is invalid without an end_user_id" do
		composer = FactoryGirl.build(:composer, end_user_id: nil)
		composer.valid?
		expect(composer.valid?).to eq false
	end
	
	it "is invalid without a composer type" do
		composer = FactoryGirl.build(:composer, category: nil)
		composer.valid?
		expect(composer.valid?).to eq false
	end

	it "is invalid without a bio" do
		composer = FactoryGirl.build(:composer, bio: nil)
		composer.valid?
		# Contains the following syntax as I like it better :)
		expect(composer.valid?).to eq true
	end
end
