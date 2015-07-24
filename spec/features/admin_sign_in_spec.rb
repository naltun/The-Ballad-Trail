require "spec_helper"
require 'rails_helper'

describe "admin sign in" do
  it "allows admin to sign in" do
    

    visit "/admins/sign_in"

    fill_in "Email",    :with => "email@example.com"
    fill_in "Password", :with => "password"

    click_button "Log in"

    page.should have_content( "HOME MENU Contact us About Admin Controls Sign Up! Login All Places All Composers All Poems All Songs Log in Email Password Remember me Sign up Forgot your password? Invalid email or password.")
  end
end