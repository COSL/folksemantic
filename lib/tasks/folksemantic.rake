require 'rake'

desc 'Translate Folksemantic'
task :translate => :environment do
  file = File.join(::Rails.root.to_s, 'config', 'locales', 'en.yml')
  system("babelphish -o -y #{file}")
end