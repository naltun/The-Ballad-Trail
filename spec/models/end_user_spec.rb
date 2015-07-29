require 'rails_helper'

RSpec.describe EndUser, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"

  it "is valid with an email and password" do
		end_user = EndUser.new(
			email: 'example@example.com',
			password: 'password')
		expect(end_user).to be_valid  	
  end
  it "is invalid without an email" do
    end_user = EndUser.new(email: nil)
    end_user.valid?
    expect(end_user.valid? == false)
  end
  it "is invalid without a password" do
  	end_user = EndUser.new(password: nil)
  	end_user.valid?
  	expect(end_user.valid? == false)
  end

  it "is invalid with a duplicate email address" do
    EndUser.create(email: 'example@example.com', password: 'password')
    end_user = EndUser.new(email: 'example@example.com', password: 'mypassword')
    end_user.valid?
    expect(end_user.valid? == false)
  end
end
