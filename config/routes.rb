Rails.application.routes.draw do

  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks'
  }
  
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do

    resources :users
    resources :games

    get '/profile', to: 'users#profile'
    get '/about', to: 'home#about'
  end

  get '/:locale', to: 'users#index'
  root 'users#index'

end

