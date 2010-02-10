ROUTES_PROTOCOL = GlobalConfig.enable_ssl ? (ENV["RAILS_ENV"] =~ /(development|test)/ ? "http" : "https") : 'http'

ActionController::Routing::Routes.draw do |map|

  map.home '', :controller => 'default', :action => 'index'
  map.root :controller => 'default', :action => 'index'

  # top level pages
  map.contact '/contact', :controller => 'default', :action => 'contact'
  map.sitemap '/sitemap', :controller => 'default', :action => 'sitemap'
  map.ping '/ping', :controller => 'default', :action => 'ping'
  
  map.resources :users, :has_many => :uploads, :has_one => :profile do |users|
    # have to map into the muck/identity_feeds controller or rails can't find the identity_feeds
    users.resources :identity_feeds, :controller => 'muck/identity_feeds'
    users.resources :feeds, :controller => 'muck/feeds'
    users.resources :aggregations, :controller => 'muck/aggregations'
  end
  
  map.resources :uploads, :collection => { :photos => :get, :swfupload => :post }
  map.resources :profiles
  map.connect 'search/results.:format', :controller => 'muck/entries', :action => 'search'

  map.public_user '/profiles/:id', :controller => 'profiles', :action => 'show'
  #map.logout_complete '/login', :controller => 'user_sessions', :action => 'new'  
  
  # admin
  map.namespace :admin do |a|
    a.resource :theme
    a.resources :domain_themes
  end
  
  map.widgets '/widgets', :controller => 'default', :action => 'widgets'
  map.oerrecommender '/oerrecommender', :controller => 'default', :action => 'oerrecommender'
  map.about '/about', :controller => 'default', :action => 'about'
  map.integration '/integration', :controller => 'default', :action => 'integration'
  map.example '/example', :controller => 'default', :action => 'example'
  map.example2 '/example2', :controller => 'default', :action => 'example2'
end
