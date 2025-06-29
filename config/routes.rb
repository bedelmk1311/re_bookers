Rails.application.routes.draw do
  # get 'homes/top'　下に変更
  # /topでhomes#topを実行する
  get '/top' => 'homes#top'

  # get 'books/new'
  # get 'books/index'
  # get 'books/edit'
  # get 'books/show'
  resources :books, only: [:new, :index, :show, :edit, :create]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
