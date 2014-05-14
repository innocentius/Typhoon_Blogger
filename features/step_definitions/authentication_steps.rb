
When /^they click link help^/ do
  click_link "Help"
end

Then /^they should be redirected to help page$/ do
  expect(page).to have_content('StaticPages#help')
end


    
When /^they complete sign in form$/ do
  
  fill_in "Email",        with: "user@example.com"
  fill_in "Password",     with: "foobar"
  
end

Then /^they click link sign in!$/ do
  click_button "Sign in"
end