Rails.application.routes.draw do
  resources :games
  # get 'pages/home'
  root "pages#home"
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # root "home#index"
  get "/about", to: "home#about"
end
