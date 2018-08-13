Rails.application.routes.draw do

<<<<<<< HEAD
  devise_for :deliverymen
=======
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :admin, path: 'admin'
>>>>>>> 4bf2f5f71bd22355a056957f7f8fde40f1200f74
  devise_for :users

  get '/firstlivreurs/new' => "firstlivreurs#new"
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
