ActionController::Routing::Routes.draw do |map|
  map.root :controller => 'searches'
  map.resources :searches
end
