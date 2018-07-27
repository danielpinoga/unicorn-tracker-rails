Rails.application.routes.draw do

  root :to => 'index#index'
  resources :locations, :unicorns
  
end
