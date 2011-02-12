ROUTES_PROTOCOL = MuckEngine.configuration.enable_ssl ? (ENV["RAILS_ENV"] =~ /(development|test)/ ? "http" : "https") : 'http'

ActionController::Routing::Routes.draw do |map|

  root :to => "default#index"

  # top level pages
  match '/contact' => 'default#contact', :as => :contact
  match '/sitemap' => 'default#sitemap', :as => :sitemap
  match '/ping' => 'default#ping', :as => :ping
  
  resources :users do
    resources :uploads
    resource :profile
    # have to map into the muck/identity_feeds controller or rails can't find the identity_feeds
    resources :identity_feeds, :controller => 'muck/identity_feeds'
    resources :feeds, :controller => 'muck/feeds'
    resources :aggregations, :controller => 'muck/aggregations'
  end
  
  resources :uploads do
    collection do
      get :photos
      post :multiupload
    end
  end

  resources :profiles
  match 'search/results.:format' => 'muck/entries#search'

  match '/profiles/:id' => 'profiles#show', :as => :public_user
  #map.logout_complete '/login', :controller => 'user_sessions#new'
  
  # admin
  namespace :admin do
    resource :theme
    resources :domain_themes
  end
  
  match '/widgets' => 'default#widgets', :as => :widgets
  match '/oerrecommender' => 'default#oerrecommender', :as => :oerrecommender
  match '/about' => 'default#about', :as => :about
  match '/demo' => 'default#demo', :as => :demo
  match '/integration' => 'default#integration', :as => :integration
  match '/example' => 'default#example', :as => :example
  match '/example2' => 'default#example2', :as => :example2
end
