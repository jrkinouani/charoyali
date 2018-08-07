Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  #devise_for :admin, path: 'admins'
  #devise_for :users , path: "users"

  devise_for :users, controllers: { sessions: 'users/sessions' }
  devise_for :admins, controllers: { sessions: 'admins/sessions' }


  get '/firstlivreurs/new' => "firstlivreurs#new"
  get '/firstlivreurs/thanks' => "firstlivreurs#thanks"

resources :firstlivreurs
  resources :posts
  root :to => "static_pages#start"
  get 'static_pages/ventes' => "static_pages#ventes"
  get 'static_pages/accueil'
  get 'static_pages/conditions'
  get 'static_pages/FAQ'
  get 'static_pages/mentions'
  get 'static_pages/apropos'
  get 'static_pages/pro'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
