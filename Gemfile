#source :gemcutter
source "http://rubygems.org"

gem "rails", "2.3.5"
gem 'mysql'

# Specify gems that this application depends on and have them installed with rake gems:install
gem 'will_paginate', '2.3.11'
gem "authlogic", '2.1.3'
gem "searchlogic", '2.4.19'
gem "bcrypt-ruby", "2.1.2", :require => "bcrypt"
gem 'paperclip', '2.3.1.1'
gem 'acts-as-taggable-on', '2.0.6'
gem 'sanitize', '1.2.1'
gem 'awesome_nested_set', '1.4.3'
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

#gem 'fireeagle', '0.8.0.1'
gem 'agree2', '0.2.0'
gem 'portablecontacts', '0.1.0'

gem 'babelphish'
gem 'overlord', '0.1.22'
gem 'uploader', '2.0.2'
#gem 'uploader', :path => "~/projects/uploader"

gem 'aws-s3'
gem 'disguise', '0.4.0'
gem 'river', '0.1.0'

gem 'muck-engine', '0.4.30', :require => 'muck_engine'
gem 'muck-users', '0.3.19', :require => 'muck_users'
gem 'muck-friends', '0.1.17', :require => 'muck_friends'
gem 'muck-activities', '0.1.27',:require => 'muck_activities'
gem 'muck-profiles', '0.2.1', :require => 'muck_profiles'
gem 'muck-shares', '0.1.8', :require => 'muck_shares'
gem 'muck-contents', '0.2.27', :require => 'muck_contents'
gem 'muck-feedbag', :require => 'feedbag'
gem 'muck-raker', '0.3.13', :require => 'muck_raker'
gem 'muck-solr', '0.4.7', :require => 'acts_as_solr'
gem 'muck-invites', '0.1.12', :require => 'muck_invites'
gem 'muck-comments', '0.1.20', :require => 'muck_comments'
gem 'muck-oauth', '0.2.4', :require => 'muck_oauth'
gem 'muck-blogs', '0.1.8', :require => 'muck_blogs'
gem 'muck-services', '0.1.45', :require => 'muck_services'

gem 'recaptcha', :require => 'recaptcha/rails'  # Only needed if using recaptcha
#gem 'action_mailer_tls', :require => 'smtp_tls' # This one won't be needed long term

gem 'hoptoad_notifier', '2.2.2' # Include if using hoptoad
gem 'newrelic_rpm'   # Include if using new relic

# group :production do
#   gem 'muck-engine', '0.4.26', :require => 'muck_engine'
#   gem 'muck-users', '0.3.13', :require => 'muck_users'
#   gem 'muck-friends', '0.1.17', :require => 'muck_friends'
#   gem 'muck-activities', '0.1.27',:require => 'muck_activities'
#   gem 'muck-profiles', '0.2.1', :require => 'muck_profiles'
#   gem 'muck-shares', '>=0.1.8', :require => 'muck_shares'
#   gem 'muck-contents', '0.2.23', :require => 'muck_contents'
#   gem 'muck-feedbag', :require => 'feedbag'
#   gem 'muck-raker', '>=0.3.13', :require => 'muck_raker'
#   gem 'muck-solr', '0.4.7', :require => 'acts_as_solr'
#   gem 'muck-invites', '0.1.11', :require => 'muck_invites'
#   gem 'muck-comments', '0.1.20', :require => 'muck_comments'
#   gem 'muck-oauth', '0.2.2', :require => 'muck_oauth'
#   gem 'muck-blogs', '0.1.8', :require => 'muck_blogs'
#   gem 'muck-commerce', '0.2.6', :require => 'muck_commerce'
#   
#   # gem 'muck-services', '>=0.1.39', :require => 'muck_services'
#   # gem 'muck-shares', '>=0.1.8', :require => 'muck_shares'
# end

group :development do
  gem 'ruby-debug'
  
  # gem 'river', :path => "~/projects/river"
  # gem 'overlord', :path => "~/projects/overlord"
  # gem 'disguise', :path => "~/projects/disguise"
  
  # gem 'babelphish', :path => "~/projects/babelphish"
  # gem 'uploader', :path => "~/projects/uploader"
  # 
  # gem 'muck-engine', :require => 'muck_engine', :path => "~/projects/muck-engine"
  # gem 'muck-users', :require => 'muck_users', :path => "~/projects/muck-users"
  # gem 'muck-friends', :require => 'muck_friends', :path => "~/projects/muck-friends"
  # gem 'muck-activities', :require => 'muck_activities', :path => "~/projects/muck-activities"
  # gem 'muck-profiles', :require => 'muck_profiles', :path => "~/projects/muck-profiles"
  # gem 'muck-shares', :require => 'muck_shares', :path => "~/projects/muck-shares"
  # gem 'muck-contents', :require => 'muck_contents', :path => "~/projects/muck-contents"
  # gem 'muck-feedbag', :require => 'feedbag', :path => "~/projects/muck-feedbag"
  # gem 'muck-raker', :require => 'muck_raker', :path => "~/projects/muck-raker"
  # gem 'muck-solr', :require => 'acts_as_solr', :path => "~/projects/acts_as_solr"
  # gem 'muck-invites', :require => 'muck_invites', :path => "~/projects/muck-invites"
  # gem 'muck-comments', :require => 'muck_comments', :path => "~/projects/muck-comments"
  # gem 'muck-oauth', :require => 'muck_oauth', :path => "~/projects/muck-oauth"
  # gem 'muck-contents', :require => 'muck_contents', :path => "~/projects/muck-contents"
  # gem 'muck-services', :require => 'muck_services', :path => "~/projects/muck-services"
  # gem 'muck-shares', :require => 'muck_shares', :path => "~/projects/muck-shares"
  # gem 'muck-blogs', :require => 'muck_blogs', :path => "~/projects/muck-blogs"
  
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
  gem 'cucumber', '>=0.1.13', :require => 'cucumber'
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