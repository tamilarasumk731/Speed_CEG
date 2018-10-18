Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :fishermen
  resources :maps
  resources :diseases
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
