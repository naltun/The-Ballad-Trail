# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :song do
    title "MyString"
    description "MyText"
    link "MyString"
    lyrics "MyText"
  end
end
