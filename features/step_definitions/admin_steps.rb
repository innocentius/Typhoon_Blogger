Given /^the user is a administrator$/ do
  User.create(name: "Example User", email: "user@example.com", password: "foobar", password_confirmation: "foobar", admin: true)
  #expect(page).to have_content("Sign out")
  #click_link "Sign out"
end

Given /^there exist two users$/ do
  User.create(name: "Example User1", email: "user1@example.com", password: "foobar", password_confirmation: "foobar")
  User.create(name: "Example User2", email: "user2@example.com", password: "foobar", password_confirmation: "foobar")
  #expect(page).to have_content("Sign out")
  #click_link "Sign out"
end

Then /^they will be redirected to all user profile page$/ do 
  expect(page).to have_content("Example User")
  #sexpect(page).to have_content("User2")
end

Given /^the user is a regular user$/ do
  fill_in "Email",        with: "user1@example.com"
  fill_in "Password",     with: "foobar"
end
Then /^they will be redirected to his own user profile page$/ do
  expect(page).to have_content("User1")
  expect(page).not_to have_content("User2")
end

