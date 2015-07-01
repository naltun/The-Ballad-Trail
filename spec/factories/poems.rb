# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :poem do
    title "A Red, Red Rose"
    description "Introduced by a variety of writers, artists and other guests, the Scottish Poetry Library’s classic poem selections are a reminder of wonderful poems to rediscover.

Colin Will on 'A Red, Red Rose':

This poem, especially in its song form, is very well known, but like some other good songs, there are underlying subtleties which can be missed in the malty spicy fumes of a Burns Supper."
    link "http://cookieshq.co.uk/posts/introduction-to-postgis-and-rails/"
    subtitle "O my Luve's like a red, red rose,
       That's newly sprung in June;
O my Luve's like the melodie
       That's sweetly play'd in tune.

As fair are thou, my bonie lass, 
       So deep in luve am I;
And I will luve thee still, my Dear,
       Till a' the seas gang dry.

Till a' the seas gang dry, my Dear,
       And the rocks melt wi' the sun:
I will luve thee still, my dear,
       While the sands o' life shall run.

And fare thee weel, my only Luve!
       And fare thee weel, a while! 
And I will come again, my Luve,
       Tho' it were ten thousand mile!"
  end
end
