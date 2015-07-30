FactoryGirl .define do
	factory :composer do
		fname "John"
		lname "Doe"
		sequence(:end_user_id) { |n| "#{n}" }
		composer_type "Poet"
		bio "I have a bio! I am from Aberdeenshire!"
	end
end
