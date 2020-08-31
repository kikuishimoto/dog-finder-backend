Rails.application.routes.draw do
  resources :dogs, only: [:create, :index, :destroy, :show, :update]
  resources :breeds, only: [:create, :index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
