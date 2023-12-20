Rails.application.routes.draw do

  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks'
  }
  
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do

    resources :users
    resources :games do
      resources :messages
    end

    get '/profile', to: 'users#profile'
    get '/about', to: 'home#about'

    namespace :admin do
      resources :users, only: %i[index show edit update destroy]
    end
  end

  get '/:locale', to: 'users#index'
  root 'users#index'

end

