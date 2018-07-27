Rails.application.routes.draw do

  root :to => 'index#index'
  put '/unicorns/:id/changeLocation', to: 'unicorns#changeLocation'
  resources :locations, :unicorns
  
end
