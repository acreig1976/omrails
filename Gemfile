source 'https://rubygems.org'
ruby File.read(File.expand_path('../.ruby-version', __FILE__))[/^[\d.]+/]

gem 'rails', '3.2.12'
gem 'jquery-rails'
gem 'devise'
gem 'simple_form'
gem "paperclip", :git => 'git://github.com/lsegal/paperclip', :branch => 'remove-aws-sdk-version-check'
gem 'aws-sdk'
gem 'faker'
gem 'will_paginate'
gem 'bootstrap-will_paginate'

group :production do
	gem 'pg'
end

group :development, :test do
	gem 'sqlite3'
	gem 'rspec-rails'
end


group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
  gem 'bootstrap-sass', '~> 2.3.1.0'
end

group :test do
	gem 'capybara'
end	
