# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :composer do
    fname "Robert"
    lname "Burns"
    type "Poet"
    bio "If ever a poet understood the character of his nation, he was Robert Burns. The language he was most fluent in wasn’t so much Scots or English – it was the language of the heart. All too human in his personal life, he carried that humanity over onto the page. Nothing was too small or too large to escape his notice, from a mouse in the mud to God in his heavens. A poet for all seasons, Burns speaks to all, soul to soul."
  end
end
