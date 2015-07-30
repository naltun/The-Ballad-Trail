FactoryGirl.define do
  factory :place do
    name "Claypotts Castle"
    latitude "56.476643"
    longitude "-2.889705"
    region "Dundee"
    sequence(:end_user_id) { |n| "#{n}" }
  end
end
