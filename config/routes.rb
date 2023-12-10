Rails.application.routes.draw do

  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks'
  }

  get '/:locale' => 'users#index'
  root 'users#index'
  
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do

    resources :users
    resources :games
  
    get '/about', to: 'home#about'
  end

end

