require 'rails_helper'

describe Song do
	it 'has a valid factory' do
		expect(build(:song)).to be_valid
	end

	it 'is invalid without a title' do
		expect(build(:song, title: nil)).to_not be_valid
	end

	it 'is invalid without a link' do
		expect(build(:song, link: nil)).to_not be_valid
	end


#RSpec.describe Song, :type => :model do
  #pending "add some examples to (or delete) #{__FILE__}"
end
