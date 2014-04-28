Given /^a user visit the home page$/ do
  visit root_path
end
When /^they click the link Users$/ do
  click_link "Users"
end
Then /^they should be redirect to the about page$/ do
  expect(page).to have_content("Listing users")
end

