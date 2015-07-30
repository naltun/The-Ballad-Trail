require 'rails_helper'

describe Place do
	it 'has a valid factory' do
		expect(build(:place)).to be_valid
	end

	it 'is invalid without a latitude and longitude' do
		place = Place.new(latitude: nil, longitude: nil)
		place.valid?
		expect(place.valid?).to eq false
	end

	it "is invalid without a region" do
		place = Place.new(region: nil)
		place.valid?
		expect(place.valid?).to eq false
	end

	it "is invalid without an end_user_id" do
		place = Place.new(end_user_id: nil)
		place.valid?
		expect(place.valid?).to eq false
	end
end
