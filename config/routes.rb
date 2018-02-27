Rails.application.routes.draw do

  get 'submits/new'
  post 'vote-up/:id' => 'votes#vote_up', as: :vote_up

  resources :questions do
    resources :comments
  end

  resources :news do
    resources :comments
  end

  get 'new-subject' => 'submits#new', as: :new_submit
  post 'create-subject' => 'submits#create', as: :submit_content

  # All comments
  get '/all-comments' => 'comments#index', as: :all_comments

  devise_for :users
  get 'users/:id' => 'users#profile', as: :user
  # Pages
  post 'search' => 'pages#search', as: :search
  get 'pages/guidelines'
  get 'pages/faq'
  get 'pages/security'
  get 'pages/support'
  get 'pages/contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#index'
end
