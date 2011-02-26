Linklater::Application.routes.draw do
  resources :links

  match '/:id', :to => 'redirect#to'
end
