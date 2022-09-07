Rails.application.routes.draw do
  devise_for :users
  root to: "pages#landing"
  get "profile", to: "pages#profile"
  get "home", to: "pages#home"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :activities do
    resources :bookings, only: [:new, :create]
    resources :comments, only: [:create]
    resources :chatroom, only: [:create]
  end
  resources :bookings, only: [:edit, :update, :destroy]
  resources :dogs, only: [:show, :create, :new, :edit, :update]
  resources :users, only: [:show, :edit, :update] do
    resources :follows, only: [:create]
  end

  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
