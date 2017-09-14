Rails.application.routes.draw do
  devise_for :users

      resources :duties
      root :to => 'duties#index' #, as: :authenticated_root

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root 'duties#home'
  # get '/diary', to: 'diary#index'
  # get '/contacts', to: 'contacts#index'
  # get '/chatsheet', to: 'cheatsheet#index'
  # get '/statistics', to: 'statistics#index'
end
