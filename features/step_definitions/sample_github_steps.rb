Given(/^a new book titled "(.*?)" and authored by "(.*?)"/) do |name, author|
  #page.set_rack_session(access_token: "some token")
  #visit '/books/new'
  #fill_in('book_name', :with => name)
  #fill_in('book_author', :with => author)
  #@book = Book.new(name: name, author: author)
end

Given(/^in "(.*?)"$/) do |url|
  visit url
end

When(/^I go to contributor$/) do
  click_link 'contributor'
end

Then(/^I should see "(.*?)" and "(.*?)"$/) do |name1, name2|
  expect(page).to have_content name1
  expect(page).to have_content name2
end
