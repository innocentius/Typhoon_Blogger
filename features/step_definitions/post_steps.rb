Given /^there exist a user$/ do
  @user = User.create(name: "Example User", email: "user@example.com", password: "foobar", password_confirmation: "foobar")
end
When /^they click link Users$/ do
  click_link "Users"
end
Then /^they should be directed to user page$/ do
  #expect(page).to have_content("Listing users")
end
When /^they click the first link show$/ do
  click_link('Show')
end
Then /^they should be directed to user 1 page$/ do
  expect(page).to have_content("Name")
  expect(page).to have_content("Email")
end
Then /^they should see post link$/ do
  expect(page).to have_link("Post")
end
When /^they click link Post$/ do
  click_link "Post"
end
Then /^they should be directed to post page$/ do
  expect(page).to have_content("Listing posts")
end
Then /^they should also see home link$/ do
  expect(page).to have_link("Home")
end
When /^they click link home$/ do
  click_link "Home"
end
Then /^they should be redirected to home$/ do
  expect(page).to have_content("StaticPages#home")
end
