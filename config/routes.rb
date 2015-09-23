Rails.application.routes.draw do
  root 'service#index'
  get 'service/index'

  devise_for :users

  namespace :me do
    get '/' => 'top#index'
    resources :questions
  end

  get '/questions' => 'questions#index'
end
