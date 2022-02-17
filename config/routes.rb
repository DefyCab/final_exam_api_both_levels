Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth/api'
  namespace :api do
    resources :articles, only: %i[index show]
    resources :comments
  end
end
