require "spec_helper"
require 'rails_helper'

describe "end_user sign in" do
  it "allows end_users to sign in after they have registered" do
    end_user = EndUser.create(:email    => "email@example.com",
                       :password => "password")

    visit "/end_users/sign_in"

    fill_in "Email",    :with => "email@example.com"
    fill_in "Password", :with => "password"

    click_button "Log in"

    page.should have_content( "The Ballad Trail Menu Home Contact us About Logged in as email@example.com. Edit profile Logout Signed in successfully.")
  end
end
