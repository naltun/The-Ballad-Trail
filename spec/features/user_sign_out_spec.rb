require "spec_helper"
require 'rails_helper'

describe "user sign out " do
  it "allows user to sign out " do
    

    visit "/"

   page.should have_content( "HOME MENU Contact us About Admin Controls Sign Up! Login All Places All Composers All Poems All Songs this is menu")
  end
end