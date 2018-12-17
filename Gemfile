source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby '2.5.1' 
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.1'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.18'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
gem 'therubyracer'
gem 'execjs'

gem 'jquery-rails', '~> 4.3', '>= 4.3.3'
gem 'rails-ujs', '~> 0.1.0'

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
gem 'useragent_parser', '~> 0.2.3'
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
gem 'unicorn'
gem 'hashids'

gem 'haml'
gem 'html2haml'

group :development, :test do
  gem 'byebug'
  gem 'factory_girl_rails', '~> 4.5'
  gem 'rspec-rails', '~> 3.7'
  gem 'faker'
  gem 'capybara', '~> 2.5'
end


group :development do
  gem 'rubocop', require: false
  gem "rails_best_practices"
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
end
