source 'https://rubygems.org'
ruby "2.1.3"


# Rails
# =====

# To use bundle edge Rails instead: gem 'rails', github: 'rails/rails'
# TODO: Bump rails to 4.2.0 stable version once available
gem 'rails', '4.2.0.beta2'

# Turbolinks makes following links in your web application faster
# Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development


# Assets
# ======

# Zurb Foundation
gem 'foundation-rails'

# Sass
# ----

# TODO: Bump sass-rails to stable version once available
gem 'sass-rails', '~> 5.0.0.beta1'

# TODO: Remove sass dependency once sass/sass#1028 has been fixed
# FIXME: Fix sstephenson/sprockets#507
gem 'sass', '3.4.5'   # NOTE: Fixes "undefined method `specificity'" error, see https://github.com/sass/sass/issues/1028
#gem 'sass', '3.2.19' # NOTE: Fixes "can't dump anonymous class" error, see https://github.com/sstephenson/sprockets/issues/507

# Javascript
# ----------

gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'

# jQuery
# ------

gem 'jquery-rails', '~> 4.0.0.beta2'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
#gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.


# Database
# ========

# Use PostgreSQL as the database for Active Record
gem 'pg'


# Documentation
# =============

# NOTE: bundle exec rake doc:rails generates the API under doc/api
gem 'sdoc', '~> 0.4.0', group: :doc


# Production
# ==========

group :production do

  # Serve static assets
  gem 'rails_12factor'

end


# Development & testing
# =====================

group :development, :test do

  # Call 'debugger' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0.0.beta4'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

end
