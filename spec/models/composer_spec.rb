require 'rails_helper'

describe Composer do
	it 'has a valid factory' do
		expect(build(:composer)).to be_valid
	end

	it 'is invalid without a first name' do
		expect(build(:composer, fname: nil)).to_not be_valid
	end

	it 'is invalid without a link' do
		expect(build(:composer, lname: nil)).to_not be_valid
	end
#RSpec.describe Composer, :type => :model do
  #pending "add some examples to (or delete) #{__FILE__}"
end
