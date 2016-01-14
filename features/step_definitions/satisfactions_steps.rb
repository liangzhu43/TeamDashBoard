Given(/^there is no satisfaction with name "(.*?)"$/) do |name|
  visit '/satisfactions'
  #expect(page).to.not have_content name
end

When(/^I add a satisfaction with name "(.*?)", category "(.*?)" and score "(.*?)"$/) do |arg1, arg2, arg3|
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see "(.*?)" listed$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end
