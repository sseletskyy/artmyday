source 'https://rubygems.org'
ruby '2.0.0'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.6'

gem 'bootstrap-sass', '~> 3.2.0'
gem 'autoprefixer-rails' # adds browser vendor prefixes automatically

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring',        group: :development

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use debugger
# gem 'debugger', group: [:development, :test]

gem 'devise'
gem 'pg'
gem 'simple_form'
gem 'slim-rails'
gem "kaminari" # paginator
gem 'bootstrap-kaminari-views'
gem 'rollbar' # monitoring

group :development do
  gem 'better_errors'
  gem 'binding_of_caller', :platforms => [:mri_19, :mri_20, :rbx]
  gem 'quiet_assets'
  gem 'thin'
  # gem 'rack-mini-profiler' # displays time spent on requests
  # gem 'flamegraph'         # addition to rack-mini-profiler

end
group :development, :test do
  gem 'pry-rails'
  gem 'pry-nav'
  gem 'pry-doc'
  gem 'rspec'
  gem 'rspec-rails'
  gem 'factory_girl_rails'

  gem 'database_cleaner'
  gem 'railroady' # generates Rails model (ActiveRecord, Mongoid, Datamapper) and controller UML diagrams as cross-platform .svg files
  gem 'awesome_print' # pretty print your ruby objects with style
end
group :production do
  gem 'rails_12factor' # for heroku
  gem "passenger" # for heroku
  gem 'newrelic_rpm' # monitoring
end
group :test do
  gem 'capybara'
  gem 'poltergeist'
  gem 'email_spec'
  gem "simplecov", require: false
end