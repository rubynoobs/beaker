source 'https://rubygems.org'
ruby '2.0.0'

gem 'rails', '4.0.0'
gem 'bootstrap-sass', '~> 2.3.2.1'
gem 'jquery-rails'
gem 'bcrypt-ruby', '3.0.1'
gem 'faker', '1.0.1'
gem 'will_paginate', '3.0.3'
gem 'bootstrap-will_paginate', '0.0.6'
gem 'devise', '3.0'
gem 'cancan', '1.6.10'
gem 'turbolinks'
gem 'jbuilder', '~> 1.2'
gem 'holder_rails'

gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'

group :doc do
  gem 'sdoc', require: false
end

group :development, :test do
	gem 'sqlite3', '1.3.7'
	gem 'rspec-rails', '2.11.0'
	gem 'guard-rspec', '1.2.1'
	gem 'guard-spork', '1.2.0'
	gem 'childprocess', '0.3.6'
	gem 'spork', '0.9.2'
	# gem 'holder_rails'
end

group :development do
	gem 'annotate', '2.5.0'
end

group :test do
	gem 'capybara', '1.1.2'
	gem 'factory_girl_rails', '4.1.0'
	# --system-dependent gems (linux gems)
	# gem 'rb-inotify', '~> 0.9'
	# gem 'libnotify', '0.5.9'
end

gem 'rails_12factor', group: :production

group :production do
	gem 'pg', '0.15.1'
end