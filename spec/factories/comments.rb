# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :comment do
    content "MyText"
    place nil
    song nil
    poem nil
    end_user nil
  end
end
