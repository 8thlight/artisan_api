$: << File.join(File.expand_path(File.dirname(__FILE__)), "../..", "lib")
require 'artisan'
require 'artisan/story'

Given /^an API key "([^\"]*)"$/ do |key|
  @api_key = key
end

Given /^estimates "([^\"]*)" "([^\"]*)" "([^\"]*)"$/ do |optimistic, realistic, pessimistic|
  @story = Artisan::Story.new({"name" => "Test Story", "number" => 1, "optimistic" => optimistic, "realistic" => realistic, "pessimistic" => pessimistic})
end

When /^I retrieve the project$/ do
  @project = Artisan.get_project(@api_key, 'localhost:3000')
end

When /^I push the new estimates$/ do
  @response = Artisan.update_estimates(@api_key, @story, 'localhost:3000')
end

Then /^the project should have "([^\"]*)" stories$/ do |amount|
  @project.stories.size.should == amount.to_i
end

Then /^I should receive confirmation$/ do
  @response.body.should == '{"Estimates":"Accepted"}'
end
