Babymonkey::Application.routes.draw do
  resources :emails, only: [:index, :create]

  root :to => 'emails#index'
end
