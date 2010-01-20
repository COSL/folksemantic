require 'rake'
begin
  require 'git'
rescue LoadError
  puts "git gem not installed.  If git functionality is required run 'sudo gem install git'"
end
require 'fileutils'

namespace :muck do
  
  def muck_gems
    ['uploader', 'disguise', 'overlord', 'muck-solr', 'muck-raker', 'muck-services', 'muck-engine',
    'muck-users', 'muck-activities', 'muck-comments', 'muck-profiles', 'muck-friends',
    'muck-contents', 'muck-blogs', 'muck-shares', 'muck-invites', 'muck-oauth',
    'babelphish']
  end
  
  desc "Gets everything ready for a release. Translates muck + gems, release gems, commits gems translates muck, writes versions into muck and then commits muck.  This takes a while"
  task :prepare_release do
    Rake::Task[ "muck:sync" ].execute
    Rake::Task[ "muck:versions" ].execute
    # Commit and push muck
    git_commit("#{projects_path}/muck", "Updated gem versions")
    git_pull("#{projects_path}/muck")
    git_push("#{projects_path}/muck")
    puts "Don't forget to install the new gems on the server"
  end
  
end