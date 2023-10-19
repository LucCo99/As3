Rails.application.routes.draw do
  get 'articles/new'
  get 'articles/show'
  get 'articles/home'
  get "news", to:"articles#news"
  get "home", to:"articles#home"
  get "admin", to:"articles#admin"
  root 'articles#index'
  resources :articles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
