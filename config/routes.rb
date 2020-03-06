Rails.application.routes.draw do
  get 'home/index'
  devise_for :accounts

  resources :subreddits
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
end
