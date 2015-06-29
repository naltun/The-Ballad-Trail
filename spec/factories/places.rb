# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :place do
    name "MyString"
    latitude "9.99"
    longitude "9.99"
    region "MyString"
  end
end
