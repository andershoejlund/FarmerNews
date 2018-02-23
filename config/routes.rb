Rails.application.routes.draw do

  resources :questions do
    resources :comments
  end

  resources :news do
    resources :comments
  end

  # All comments
  get '/all-comments' => 'comments#index', as: :all_comments

  devise_for :users
  # Pages
  get 'pages/guidelines'
  get 'pages/faq'
  get 'pages/support'
  get 'pages/contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#index'
end
