require 'rails_helper'

RSpec.describe Admin, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"

  it "has a valid factory" do
    expect(FactoryGirl.build(:admin)).to be_valid
  end

  it "is valid with an email and password" do
    admin = Admin.new(
      email: 'tbt_admin1@balladtrail.com',
      password: 'password'
    )
    admin.valid?
    expect(admin).to be_valid
  end

  it "is invalid without an email and password" do
    admin = FactoryGirl.build(:admin, email: nil, password: nil)
    admin.valid?
    expect(admin.valid?).to eq false
  end
end
