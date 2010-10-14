# Please install the Engine Yard Capistrano gem
# gem install eycap --source http://gems.engineyard.com
require "eycap/recipes"
require 'new_relic/recipes'

set :keep_releases, 5
set :application,   'Folksemantic'
set :repository,    'git@github.com:COSL/folksemantic.git'
set :deploy_to,     "/data/#{application}"
set :deploy_via,    :export
set :monit_group,   "#{application}"
set :scm,           :git
#set :git_enable_submodules, 1

# This is the same database name for all environments
set :production_database,'Folksemantic_production'

set :environment_host, 'localhost'
set :deploy_via, :remote_cache

set :rails_env, 'production'
set :environment_dbhost, 'localhost'

# uncomment the following to have a database backup done before every migration
#before "deploy:migrate", "db:dump"

# comment out if it gives you trouble. newest net/ssh needs this set.
ssh_options[:paranoid] = false
default_run_options[:pty] = true
ssh_options[:forward_agent] = true
default_run_options[:pty] = true # required for svn+ssh:// andf git:// sometimes

# This will execute the Git revision parsing on the *remote* server rather than locally
set :real_revision, 			lambda { source.query_revision(revision) { |cmd| capture(cmd) } }

task :production do
  role :web, 'TODO_WEB_IP_ADDRESS'
  role :app, 'TODO_APP_IP_ADDRESS'
  role :db, 'TODO_DB_IP_ADDRESS', :primary => true
  set :environment_database, Proc.new { production_database }
  set :dbuser,        'TODO_DATABASE_USERNAME'
  set :dbpass,        'TODO_DATABASE_PASSWORD'
  set :user,          'TODO_USERNAME'
  set :password,      'TODO_PASSWORD'
  set :runner,        'TODO_RUNNER'
  set :rails_env,     'production'
end

after 'deploy:symlink_configs', :setup_symlinks
task :setup_symlinks, :roles => :app do
  run "ln -nfs #{shared_path}/config/global_config.yml #{release_path}/config/"
  # Uncomment the line below if you setup new relic
  # run "ln -nfs #{shared_path}/config/newrelic.yml #{release_path}/config/"
end

# TASKS
# Don't change unless you know what you are doing!
after "deploy", "deploy:cleanup"
after "deploy:migrations", "deploy:cleanup"
after "deploy:update_code","deploy:symlink_configs"
# Let new relic know we updated
after "deploy:update", "newrelic:notice_deployment"

namespace :nginx do
  task :start, :roles => :app do
    sudo "nohup /etc/init.d/nginx start > /dev/null"
  end

  task :restart, :roles => :app do
    sudo "nohup /etc/init.d/nginx restart > /dev/null"
  end
end

namespace :deploy do
  task :start, :roles => :app do
    run "touch #{current_release}/tmp/restart.txt"
  end
 
  task :stop, :roles => :app do
    # Do nothing.
  end
 
  task :restart, :roles => :app do
    run "touch #{current_release}/tmp/restart.txt"
  end
end
