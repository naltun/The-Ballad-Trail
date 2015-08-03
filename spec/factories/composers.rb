FactoryGirl.define do
	factory :composer do
		fname "John"
		lname "Doe"
		sequence(:end_user_id) { |n| "#{n}" }
		category "Poet"
		bio "I have a bio! I am from Aberdeenshire!"
	end
end
