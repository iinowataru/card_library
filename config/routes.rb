Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  resources :infomations, only: [:new, :index, :show, :create, :edit, :destroy]
  get 'homes/top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end
