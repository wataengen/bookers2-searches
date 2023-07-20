Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root :to =>"home#top"

  devise_for :users
  get "home/about"=>"home#about"

  resources :books, only: [:index, :show, :edit, :create, :destroy, :update] do
   resources :book_comments, only: [:create, :destroy]
   resource :favorites, only: [:create, :destroy]
  end

  resources :users, only: [:index, :show, :edit, :update] do
    member do
      get :followings, :followers
    end
     resource :relationships, only: [:create, :destroy]
  end

  get "search" => "searches#search"
  # get 'searches/search_result'

end