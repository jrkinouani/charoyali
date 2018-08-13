Rails.application.routes.draw do

  devise_for :users, path_names: {
      sign_in: 'login',
      sign_out: 'logout',
      sign_up: 'signup',}

    devise_for :admin, path_names: {
      sign_in: 'login',
      sign_out: 'logout',
      sign_up: 'signup',},
      :controllers => {registrations:  "admins/registrations"}

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'


  get '/firstlivreurs/thanks' => "firstlivreurs#thanks"

  root :to => "firstlivreurs#new"
resources :firstlivreurs
  resources :posts

  get 'static_pages/ventes' => "static_pages#ventes"
  get 'static_pages/accueil'
  get 'static_pages/conditions'
  get 'static_pages/FAQ'
  get 'static_pages/mentions'
  get 'static_pages/apropos'
  get 'static_pages/pro'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
