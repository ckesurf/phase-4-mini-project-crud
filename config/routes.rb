Rails.application.routes.draw do
  resources :spices, only: [:index, :create, :update, :destroy]
  # get '/custom_route', to: 'spices#do_something_specific'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
