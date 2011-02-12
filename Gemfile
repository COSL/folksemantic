#source :gemcutter
source "http://rubygems.org"

gem "rails", "3.0.4"
gem 'mysql'

# Specify gems that this application depends on and have them installed with rake gems:install
# gem 'authlogic'
# TODO this is temporary until the official authlogic gem is updated for rails 3
# gem 'authlogic', :git => 'git://github.com/odorcicd/authlogic.git', :branch => 'rails3'
gem 'authlogic', :git => 'git://github.com/binarylogic/authlogic.git'

gem "will_paginate"
gem "bcrypt-ruby", ">=2.1.1", :require => "bcrypt"
gem "nested_set"
gem "sanitize"
gem "paperclip"
gem "friendly_id", ">=3.1.7"
gem "hoptoad_notifier"
gem 'newrelic_rpm'
#gem "recaptcha", :require => "recaptcha/rails"
gem "tiny_mce"
gem "acts-as-taggable-on"
gem "omniauth"
gem "aasm", '2.1.5'
gem 'tiny_mce'
gem 'geokit'
gem "feedzirra"
gem 'httparty'


gem 'twitter'
#gem "linkedin", '0.1.8', :git => "git://github.com/jbasdf/linkedin.git" # The released version of the linkedin gem doesn't work with oauth 0.4.0 so fork it.
#gem "linkedin", '0.1.8', :path => "~/projects/linkedin"


gem 'babelphish'
gem 'uploader', '3.0.2'
#gem 'uploader', :path => "~/projects/uploader"

gem 'aws-s3'
<<<<<<< HEAD
gem 'disguise', '3.0.2'
gem 'river', '3.0.0'
=======
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
gem 'muck-raker', '0.3.18', :require => 'muck_raker'
gem 'muck-solr', '0.4.7', :require => 'acts_as_solr'
gem 'muck-invites', '0.1.12', :require => 'muck_invites'
gem 'muck-comments', '0.1.20', :require => 'muck_comments'
gem 'muck-oauth', '0.2.4', :require => 'muck_oauth'
gem 'muck-blogs', '0.1.8', :require => 'muck_blogs'
gem 'muck-services', '0.1.47', :require => 'muck_services'

gem 'recaptcha', :require => 'recaptcha/rails'  # Only needed if using recaptcha
#gem 'action_mailer_tls', :require => 'smtp_tls' # This one won't be needed long term
>>>>>>> 024a11303be142a758e49f598036b53584a598f2

gem "muck-engine", ">=3.2.0"
gem "muck-users", ">=3.1.4"
gem "muck-comments", ">=3.1.0"
gem "muck-contents", ">=3.1.0"
gem "muck-profiles", ">=3.1.1"
gem "muck-activities", ">=3.1.0"
gem "muck-friends", ">=3.1.0"
gem "muck-shares", ">=3.1.0"
gem "muck-invites", ">=3.1.0"
gem "muck-services", ">=3.2.1"
gem "muck-raker"

#gem "muck-feedbag", :path => "~/projects/muck-feedbag"
#gem "muck-solr", :require => "acts_as_solr", :path => "~/projects/acts_as_solr"
#gem "muck-engine", :path => "~/projects/muck-engine"
#gem "muck-users", :path => "~/projects/muck-users"
#gem "muck-profiles", :path => "~/projects/muck-profiles"
#gem "muck-services", :path => "~/projects/muck-services"6'

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

group :test, :development do
  gem "rspec-rails", ">=2.1.0"
  gem "cucumber-rails"
end

group :test do
  gem "autotest"
  gem "capybara"
  gem "shoulda"
  gem "factory_girl"
  gem "cucumber"
  gem "rcov"
  gem "rspec", ">=2.1.0"
  gem "database_cleaner"
  gem "spork"
  gem "launchy"
end