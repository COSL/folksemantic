require 'rake'

desc 'Translate Folksemantic'
task :translate do
  file = File.join(File.dirname(__FILE__), 'config', 'locales', 'en.yml')
  system("babelphish -o -y #{file}")
end