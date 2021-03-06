Given /^a user visit the home page$/ do
  visit root_path
end
When /^they click the link about$/ do
  click_link "About"
end
Then /^they should be redirect to the about page$/ do
  expect(page).to have_content("StaticPages#about")
end
When /^they click the link contact$/ do
  click_link "Contact"
end
Then /^they should be redirect to the contact page$/ do
  expect(page).to have_content("StaticPages#contact")
end
When /^they click the link help$/ do
  click_link "Help"
end
Then /^they should be redirect to the help page$/ do
  expect(page).to have_content("StaticPages#help")
end
