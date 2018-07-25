Rails.application.routes.draw do

  root :to => "static_pages#accueil"
  get 'static_pages/ventes'
  get 'static_pages/conditions'
  get 'static_pages/FAQ'
  get 'static_pages/mentions'
  get 'static_pages/apropos'
  get 'static_pages/pro'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
