Rails.application.routes.draw do
  namespace :site do
    get 'welcome/index'
  end

  namespace :users_backoffice do
    get 'welcome/index'
  end

  namespace :admins_backoffice do
    get 'welcome/index'     # Dashboard
    resources :admins       #, except: [:destroy]  # Administradores
    resources :subjects     # Assuntos/Áreas
  end

  devise_for :admins
  devise_for :users
  
  root "site/welcome#index"
end
