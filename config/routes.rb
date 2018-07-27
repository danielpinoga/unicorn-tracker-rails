Rails.application.routes.draw do

  root :to => 'index#index'
  put '/unicorns/:id/changeLocation', to: 'unicorns#change_location'
  resources :locations, :unicorns
  
end
