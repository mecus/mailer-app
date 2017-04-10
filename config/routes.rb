Rails.application.routes.draw do
  # resources :coffees
  # resources :orders
  resources :mailings

  jsonapi_resources :orders
  jsonapi_resources :coffees
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
