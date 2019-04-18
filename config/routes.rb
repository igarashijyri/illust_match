Rails.application.routes.draw do

  # デバイス認証
  get 'users/index'
  get 'users/show'
  devise_for :users
  resources :users, :only => [:index, :show]

  resources :novel_products

  # 画像アップロード
  get '/posts', to: 'posts#show'
  post '/posts/create', to: 'posts#create'

end
