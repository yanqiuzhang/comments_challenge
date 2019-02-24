When("I visit the site") do
  visit root_path
end

Given("the following articles exists") do |table|
  table.hashes.each do |article|
    Article.create(article)
  end
end

When("I click {string}") do |button|
  click_on button
end

When("I fill in {string} with {string}") do |field, input|
  fill_in field, with: input
end

Given("I am reading the article titled {string}") do |title|
  @article = Article.find_by_title(title)
end

When("I visit the article comment site") do
  case page
  when 'Learning Rails 5'
    visit 'article_comments'
  end
end