Rails.application.routes.draw do
  require 'commontator' 
  resources :lectures do
    member do
      get '/lectures/:id/like', to: 'lectures#like', as: 'like'
      get '/lectures/:id/unlikev', to: 'lectures#unlike', as: 'unlike'
    end
  end
  resources :courses
  mount Commontator::Engine => "/commontator"
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
