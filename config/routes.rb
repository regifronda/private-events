Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'users/registrations' }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:new, :create, :show, :index]
  resources :events, only: [:index, :new, :create, :show]
  get "/events/:id", to: "events#show"
  root "events#index"
end
