Linklater::Application.routes.draw do
  devise_for :users

  resources :links

  match '/:id', :to => 'redirect#to'
end
