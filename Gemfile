#source :gemcutter
source "http://rubygems.org"

gem "rails", "2.3.5"
gem 'mysql'

# Specify gems that this application depends on and have them installed with rake gems:install
gem 'will_paginate', '2.3.11'
gem "authlogic", '2.1.3'
gem "bcrypt-ruby", "2.1.2", :require => "bcrypt"
gem 'paperclip', '2.3.1.1'
gem 'acts-as-taggable-on', '2.0.6'
gem 'sanitize', '1.2.1'
gem "friendly_id", '3.0.4'
gem "aasm", '2.1.5'
gem 'tiny_mce'
gem 'geokit', '1.5.0'
gem "feedzirra"
gem 'httparty'


# Include these gems if using muck-oauth
gem 'oauth', '0.4.0'
gem 'oauth-plugin', '0.3.14'
gem 'twitter', '0.9.5'
gem "linkedin", '0.1.8', :git => "git://github.com/jbasdf/linkedin.git" # The released version of the linkedin gem doesn't work with oauth 0.4.0 so fork it.
#gem "linkedin", '0.1.8', :path => "~/projects/linkedin"

gem 'agree2', '0.2.0'
gem 'portablecontacts', '0.1.0'

gem 'babelphish'
gem 'uploader', '2.0.2'
#gem 'uploader', :path => "~/projects/uploader"

gem 'aws-s3'
gem 'disguise', '0.4.0'
gem 'river', '0.1.0'

gem 'muck-engine', '0.4.30'
gem 'muck-users', '0.3.19'
gem 'muck-friends', '0.1.17'
gem 'muck-activities', '0.1.27'
gem 'muck-profiles', '0.2.1'
gem 'muck-shares', '0.1.8'
gem 'muck-contents', '0.2.27'
gem 'muck-feedbag', :require => 'feedbag'
gem 'muck-raker', '0.3.18'
gem 'muck-solr', '0.4.7', :require => 'acts_as_solr'
gem 'muck-invites', '0.1.12'
gem 'muck-comments', '0.1.20'
gem 'muck-oauth', '0.2.4'
gem 'muck-blogs', '0.1.8'
gem 'muck-services', '0.1.46'

gem 'recaptcha', :require => 'recaptcha/rails'  # Only needed if using recaptcha
#gem 'action_mailer_tls', :require => 'smtp_tls' # This one won't be needed long term

gem 'hoptoad_notifier', '2.2.2' # Include if using hoptoad
gem 'newrelic_rpm'   # Include if using new relic

# group :production do
#   gem 'muck-engine', '0.4.26'
#   gem 'muck-users', '0.3.13'
#   gem 'muck-friends', '0.1.17'
#   gem 'muck-activities', '0.1.27'
#   gem 'muck-profiles', '0.2.1'
#   gem 'muck-shares', '>=0.1.8'
#   gem 'muck-contents', '0.2.23'
#   gem 'muck-feedbag', :require => 'feedbag'
#   gem 'muck-raker', '>=0.3.13'
#   gem 'muck-solr', '0.4.7', :require => 'acts_as_solr'
#   gem 'muck-invites', '0.1.11'
#   gem 'muck-comments', '0.1.20'
#   gem 'muck-oauth', '0.2.2'
#   gem 'muck-blogs', '0.1.8'
#   # gem 'muck-services', '>=0.1.39'
#   # gem 'muck-shares', '>=0.1.8'
# end

group :development do
  gem 'ruby-debug'
  
  # gem 'river', :path => "~/projects/river"
  # gem 'overlord', :path => "~/projects/overlord"
  # gem 'disguise', :path => "~/projects/disguise"
  
  # gem 'babelphish', :path => "~/projects/babelphish"
  # gem 'uploader', :path => "~/projects/uploader"
  # 
  # gem 'muck-engine', :path => "~/projects/muck-engine"
  # gem 'muck-users', :path => "~/projects/muck-users"
  # gem 'muck-friends', :path => "~/projects/muck-friends"
  # gem 'muck-activities', :path => "~/projects/muck-activities"
  # gem 'muck-profiles', :path => "~/projects/muck-profiles"
  # gem 'muck-shares', :path => "~/projects/muck-shares"
  # gem 'muck-contents', :path => "~/projects/muck-contents"
  # gem 'muck-feedbag', :require => 'feedbag', :path => "~/projects/muck-feedbag"
  # gem 'muck-raker', :path => "~/projects/muck-raker"
  # gem 'muck-solr', :require => 'acts_as_solr', :path => "~/projects/acts_as_solr"
  # gem 'muck-invites', :path => "~/projects/muck-invites"
  # gem 'muck-comments', :path => "~/projects/muck-comments"
  # gem 'muck-oauth', :path => "~/projects/muck-oauth"
  # gem 'muck-contents', :path => "~/projects/muck-contents"
  # gem 'muck-services', :path => "~/projects/muck-services"
  # gem 'muck-shares', :path => "~/projects/muck-shares"
  # gem 'muck-blogs', :path => "~/projects/muck-blogs"
  
end

group :test do
  # bundler requires these gems while running tests
  gem 'ruby-debug'
  gem 'mocha', '>= 0.9.8'
  gem 'redgreen'
  gem 'factory_girl'
  gem 'shoulda'
  gem 'treetop', '>=1.2.4'
  gem 'term-ansicolor', '>=1.0.3', :require => 'term/ansicolor'
  gem 'cucumber', '>=0.1.13'
  gem 'polyglot', '>=0.2.4'
  gem "rcov", '>=0.8.1.2.0'
  gem "webrat", '>=0.4.4'
  gem 'redgreen'
  # gem 'rspec', '>=1.1.12', :require_as => 'spec'
  # gem 'rspec-rails', '>=1.1.12', :require_as => 'spec/rails'
  # only required if you want to use selenium for testing
  #gem 'selenium-client', :require_as => 'selenium/client'
  #gem 'database_cleaner'
end