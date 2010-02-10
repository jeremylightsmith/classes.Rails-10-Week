ActionController::Routing::Routes.draw do |map|
  map.root :controller => :albums
  map.resources :artists
  map.resources :albums
  map.resources :tracks
end
