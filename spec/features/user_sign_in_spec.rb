require "spec_helper"
require 'rails_helper'

When /I sign in/ do
  within("/end_users/sign_in") do
    fill_in 'Email', :with => 'user@example.com'
    fill_in 'Password', :with => 'password'
  end
  click_button 'Sign in'
end