Rails.application.routes.draw do
  resources :spices, only: [:index, :create, :update, :delete]
end
