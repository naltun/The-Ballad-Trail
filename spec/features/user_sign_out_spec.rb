describe "user sign out " do
  it "allows user to sign out " do
    visit "/end_users/sign_in"

   page.should have_content("Login" )
  end
end

