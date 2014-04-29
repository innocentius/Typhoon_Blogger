Given /^there exist a post$/ do
  @post = Post.create(title: "Typhoon", content: "Typhoon sweeps the Rail!", user_id: 1)
end

When(/^they are on the user show page$/) do
  user = User.first
  user.should_not be_nil
  visit user_path(user)
end

Then /^they should be directed to post show page$/ do
  expect(page).to have_content("Title")
  expect(page).to have_content("Content")
end

Then /^they should see comments link$/ do
  expect(page).to have_link("Edit")
end
When /^they click link Comments$/ do
  click_link "Comments"
end

Then /^they should be directed to comment page$/ do
  expect(page).to have_content("Listing comments")
end