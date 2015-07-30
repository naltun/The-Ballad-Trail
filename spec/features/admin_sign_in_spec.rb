

describe "admin sign in" do
it "allows the administrator  to sign in " do
    admin = Admin.create(:email    => "email@example.com",
                       :password => "password")
                       
        visit "/admins/sign_in"

    fill_in "Email",    :with => "email@example.com"
    fill_in "Password", :with => "password"

    click_button "Log in"

    page.has_content?( "Logged in as Administrator.")
  end
end

