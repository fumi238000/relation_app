Rails.application.routes.draw do
  devise_for :users
  root "posts#index"

# ネストしたルーディングの書き方
  resources :posts do
    resource :likes, only: [:create, :destroy]
  end
end
