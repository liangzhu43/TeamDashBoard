Given(/^there is no satisfaction with name "(.*?)"$/) do |name|
  visit '/satisfactions'
  expect(page).to_not have_content name
end

When(/^I add a satisfaction with name "(.*?)", category "(.*?)", date "(.*?)" and score "(.*?)"$/) do |name, category, date, score|
  visit '/satisfactions/new'
  fill_in('satisfaction_date',:with => date)
  fill_in('satisfaction_name',:with => name)
  fill_in('satisfaction_category',:with => category)
  fill_in('satisfaction_score',:with => score)
  click_button 'Create Satisfaction'
end

Then(/^I should see "(.*?)" listed$/) do |name|
  visit '/satisfactions'
  expect(page).to have_content name
end
