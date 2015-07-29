require 'rails_helper'

RSpec.describe Admin, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"

  it "is valid with an email and password" do
  	admin = Admin.new(email: 'admin@balladtrail.com', password: 'theadmin')
  	admin.valid?
  	expect(admin.valid?)
  end

	it "is invalid without an email and password" do
		admin = Admin.new(email: nil, password: nil)
		admin.valid?
		expect(admin.valid? == false)
	end
end
