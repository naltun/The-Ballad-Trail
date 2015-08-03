FactoryGirl.define do
  factory :place do
    name "Claypotts Castle"
    latitude "56.476643"
    longitude "-2.889705"
    region "Dundee"
    image "http://s0.geograph.org.uk/geophotos/02/96/15/2961549_3616b723.jpg"
    sequence(:end_user_id) { |n| "#{n}" }
  end
end
