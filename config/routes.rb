Rails.application.routes.draw do

  resources :comments
  # デバイス認証
  get 'users/index'
  get 'users/show'
  get 'users/user_page'

  # オーバーライドしたコントローラを読み込む
  devise_for :users, :controllers => {
  :registrations => 'users/registrations',
  :sessions => 'users/sessions'
  }
  resources :users, :only => [:index, :show]
  resources :user_profiles

end
