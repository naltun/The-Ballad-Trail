require 'rails_helper'

describe Place do
	it 'has a valid factory' do
		expect(build(:place)).to be_valid
	end

	it 'is invalid without a latitude' do
		expect(build(:place, latitude: nil)).to_not be_valid
	end

	it 'is invalid without a longitude' do
		expect(build(:place, longitude: nil)).to_not be_valid
	end

#RSpec.describe Place, :type => :model do
  #pending "add some examples to (or delete) #{__FILE__}"
end
