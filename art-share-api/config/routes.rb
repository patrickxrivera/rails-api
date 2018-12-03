Rails.application.routes.draw do
  resources :artwork_shares
  resources :artworks
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
