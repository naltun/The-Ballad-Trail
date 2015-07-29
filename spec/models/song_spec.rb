require 'rails_helper'

describe Song do
	it 'has a valid factory' do
		expect(build(:song)).to be_valid
	end

	it 'is invalid without a title' do
		song = Song.new(title: nil)
		song.valid?
		expect(song.valid? == false)
	end

	it 'is invalid without a place_id, composer_id, end_user_id' do
		song = Song.new(place_id: nil, composer_id: nil, end_user_id: nil)
		song.valid?
		expect(song.valid? == false)
	end


#RSpec.describe Song, :type => :model do
  #pending "add some examples to (or delete) #{__FILE__}"
end
