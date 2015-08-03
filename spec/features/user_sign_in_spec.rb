describe "user sign in" do
  it "allows users to sign in after they have registered" do
    visit "/end_users/sign_in"

    fill_in "Email",    :with => "email@example.com"
    fill_in "Password", :with => "password"

    click_button "Log in"

   page.has_content?( "Logged in as email@example.com")
  end
end
