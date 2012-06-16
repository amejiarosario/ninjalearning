Given /^there is some content already$/ do
  @lu = LearningUnit.create(title: "RailsGuides", url: "http://guides.rubyonrails.org/")
end

When /^I visit the home page$/ do
  visit '/'
end

Then /^should see all the content available$/ do
  visit '/'
  page.should have_link 'RailsGuides'
end

Then /^show me the page$/ do
  save_and_open_page
end