
Given(/^I am on the homepage$/) do
  visit('/')
end

When(/^i follow "([^"]*)"$/) do |arg1|
  click_link arg1
end

Then(/^I should see "([^"]*)"$/) do |arg1|
  expect(page).to have_content arg1
end

Given(/^I am on the name page$/) do
  visit('/name')
end

When(/^I do not input a name$/) do
  fill_in('Name', :with => '')
end

When(/^I click submit$/) do
  click_button('Submit')
end

When(/^I input "([^"]*)"$/) do |arg1|
  fill_in('Name', :with => arg1)
end

Given(/^I am on the confirmation page$/) do
  visit('/confirmation')
end

When(/^I click play$/) do
  click_button('Play')
end

Then(/^I am on the game page$/) do
  visit('/game')
end

Then(/^I should see the game board$/) do
  page.has_content?
end
