ActionController::Routing::Routes.draw do |map|
  map.root :controller => :albums
  map.resources :albums
end
