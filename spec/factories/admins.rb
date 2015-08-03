FactoryGirl.define do
	factory :admin do
		sequence(:email) { |n| "tbt_admin#{n}@balladtrail.com" }
		password "password"
	end
end
