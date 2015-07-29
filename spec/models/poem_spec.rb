require 'rails_helper'

describe Poem do
	it 'has a valid factory' do
		expect(build(:poem)).to be_valid
	end

	it 'is invalid without a title' do
		poem = Poem.new(title: nil)
		poem.valid?
		expect(poem.valid?).to eq false
	end

	it 'is invalid without a place_id, composer_id, end_user_id' do
		poem = Poem.new(place_id: nil, composer_id: nil, end_user_id: nil)
		poem.valid?
		expect(poem.valid?).to eq false
	end

	it "is invalid without a subtitle" do
		poem = Poem.new(subtitle: nil)
		poem.valid?
		expect(poem.valid?).to eq false
	end
	
#RSpec.describe Poem, :type => :model do
  #pending "add some examples to (or delete) #{__FILE__}"
end
