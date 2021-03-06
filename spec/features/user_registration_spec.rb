describe "user registration" do
  it "allows new users to register with an email address and password" do
    visit "/end_users/sign_up"

    fill_in "Email",                 :with => "email@example.com"
    fill_in "Password",              :with => "password"
    fill_in "Password confirmation", :with => "password"

    click_button "Sign up"

    page.should have_content("Logged in as email@example.com ")
  end
end
