require 'selenium-webdriver'
require 'capybara/poltergeist'
require 'selenium-webdriver'
require 'capybara/rspec'
require 'capybara-screenshot/rspec'
require 'capybara-screenshot/cucumber'

Given(/^I navigate to "(.*?)"$/) do |url|
  visit url
end

And /^I take screenshot$/ do
	page.save_screenshot
end

And /^I should see "(.*?)" on the page$/ do |text|
	expect(page).to_have text
end

Given /^There exists an article with name "(.*?)" in db$/ do |name|
	a = Article.new(title: name, text: 'abcd')
	a.save!
end