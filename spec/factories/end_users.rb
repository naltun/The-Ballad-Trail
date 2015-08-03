FactoryGirl.define do
	factory :end_user do
		sequence(:email) { |n| "tbt_user#{n}@example.com" }
		password "password"
	end
end
