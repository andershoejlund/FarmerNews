Rails.application.routes.draw do

  resources :questions do
    resources :comments
  end

  resources :news do
    resources :comments
  end

  get 'new-subject' => 'news#new', as: :new_subject

  # All comments
  get '/all-comments' => 'comments#index', as: :all_comments

  devise_for :users
  get 'users/:id' => 'users#profile', as: :user
  # Pages
  get 'pages/guidelines'
  get 'pages/faq'
  get 'pages/support'
  get 'pages/contact'
  get 'pages/post/:id' => 'pages#post', as: :show_post

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#index'
end
