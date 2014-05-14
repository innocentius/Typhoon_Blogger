When /^they click link Sign in$/ do
  expect(page).to have_content('Sign in')
  click_link "Sign in"
end
Then /^they should be redirected to the sign in page$/ do
  expect(page).to have_content('Sign in')
end
When /^they click link Sign up$/ do
  click_link "Sign up"
end
Then /^they should be redirected to the sign up page$/ do
  expect(page).to have_content("New user")
end
When /^they complete sign up form$/ do
  fill_in "Name",         with: "Example User"
  fill_in "Email",        with: "user@example.com"
  fill_in "Password",     with: "foobar"
  fill_in "Confirm Password", with: "foobar"
end
Then /^they click link sign up!$/ do
  click_button "Submit"
end
Then /^they should be redirected to the user profile page$/ do
  expect(page).to have_content("Name:")
  expect(page).to have_content("Email:")
end
Then /^there should be no sign in link$/ do
  expect(page).to_not have_link("Sign in")
end

Then /^there should be no sign up link$/ do
  expect(page).to_not have_link("Sign up")
end