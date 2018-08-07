Rails.application.routes.draw do

  devise_for :users, path: 'users', controllers: { sessions: "users/sessions" }
devise_for :admins, path: 'admins', controllers: { sessions: "admins/sessions" }

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  

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
