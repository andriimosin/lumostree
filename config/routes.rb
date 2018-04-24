Rails.application.routes.draw do
  root 'directory_trees#index'

  resources :directory_trees do
    resources :nodes, only: [:new, :create]
  end
end
