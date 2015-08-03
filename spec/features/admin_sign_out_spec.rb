describe "admin sign out " do
  it "allows admin to sign out " do
    visit "/"

   page.has_content?( "Admin Controls")
  end
end