Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'public#home', as: 'home'

  get 'powitanie' => 'welcome#index', as: 'powitanie'
  get 'pokarm' => 'eat#index', as: 'pokarm'
  get 'edycja' => 'uzytkownik#index', as: 'edycja'
  get 'rejestracja' => 'users#new', as: 'rejestracja'
  get '/rejestracja', to: 'public#home'
  resources :pokarmies
  resources :users, only: [:new, :create]
  get 'spispokarmow' => 'pokarmies#index', as: 'spispokarmow'
  resources :sessions, only: [:create] do
    collection do
      get 'logout' => 'sessions#destroy'
    end
  end
end
