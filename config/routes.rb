Rails.application.routes.draw do
  root 'persons#index'
  resources :persons, only: :show do
    resources :activities, only: :create
  end
end
