When("I visit the site") do
  visit root_path
end

Then("I should see {string}") do |content|
  expect(page).to have_content content
end

Given("the following articles exists") do |table|
  table.hashes.each do |article|
    Article.create!(article)
  end
end

Given("I visit the {string} page") do |string|
  visit root_path
end

When("I click {string}") do |button|
  click_on button
end

When("I fill in {string} with {string}") do |field, input|
  fill_in field, with: input
end

Then("I should be on {string} page") do |string|
  case page
  when 'Learning Rails 5'
    visit '/'
  end
end