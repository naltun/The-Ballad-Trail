require "spec_helper"
require 'rails_helper'

describe "user sign in" do
  it "allows users to sign in after they have registered" do
    user = EndUser.create(:email    => "email@example.com",
                       :password => "password")

    visit "/end_users/sign_in"

    fill_in "Email",    :with => "email@example.com"
    fill_in "Password", :with => "password"

    click_button "Log in"

    page.should have_content( "HOME MENU Contact us About Logged in as email@example.com. Edit profile Logout All Places All Composers All Poems All Songs this is menu Signed in successfully.")
  end
end
