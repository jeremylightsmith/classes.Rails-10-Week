ActionController::Routing::Routes.draw do |map|
  map.root :controller => "messages", :action => "new"
  map.resources :messages
end
