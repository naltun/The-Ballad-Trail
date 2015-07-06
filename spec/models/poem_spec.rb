require 'rails_helper'

describe Poem do
	it 'has a valid factory' do
		expect(build(:poem)).to be_valid
	end

	it 'is invalid without a title' do
		expect(build(:poem, title: nil)).to_not be_valid
	end

	it 'is invalid without a link' do
		expect(build(:poem, link: nil)).to_not be_valid
	end

#RSpec.describe Poem, :type => :model do
  #pending "add some examples to (or delete) #{__FILE__}"
end