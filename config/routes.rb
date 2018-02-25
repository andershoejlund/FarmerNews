Rails.application.routes.draw do

  get 'submits/new'

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
  get 'pages/guidelines'
  get 'pages/faq'
  get 'pages/support'
  get 'pages/contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#index'
end
