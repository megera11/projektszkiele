Rails.application.routes.draw do

  root 'public#home', as: 'home'
  get 'spispokarmow' => 'pokarmy#index', as: 'spispokarmow'
  get 'powitanie' => 'welcome#index', as: 'powitanie'
  get 'pokarm' => 'eat#index', as: 'pokarm'
  get 'edycja' => 'uzytkownik#index', as: 'edycja'
  get 'rejestracja' => 'users#new', as: 'rejestracja'
end
