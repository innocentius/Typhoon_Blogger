Given /^the user is a administrator$/ do
  admin = user1 = User.create(name: "User1", email: "user@example.com", password: "foobar", password_confirmation: "foobar", admin: true)
  
end

Given /^there exist two users$/ do
  user1 = User.create(name: "User1", email: "user@example.com", password: "foobar", password_confirmation: "foobar", admin: false)
  user2 = User.create(name: "User2", email: "user@example.com", password: "foobar", password_confirmation: "foobar", admin: false)
end

Then /^they will be redirected to all user profile page$/ do 
  expect(page).to have_content("User1")
  expect(page).to have_content("User2")
end

Given /^the user is a regular user(logined)$/ do
  fill_in "Name",         with: "User1"
  fill_in "Email",        with: "user@example.com"
  fill_in "Password",     with: "foobar"
end
Then /^they will be redirected to his own user profile page$/ do
  expect(page).to have_content("User1")
  expect(page).not_to have_content("User2")
end

