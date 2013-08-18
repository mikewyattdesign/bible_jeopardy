BibleJeopardy::Application.routes.draw do
  get "categories/index"
  get "categories/edit"
  get "categories/show"
  get "categories/new"
  
  get "scores/index"
  get "scores/edit"
  get "scores/show"
  get "scores/new"

  get "boards/index"
  get "boards/edit"
  get "boards/show"
  get "boards/new"
  get "practice" => "boards#random_practice" 

  get "clues/index"
  get "clues/edit"
  get "clues/show"
  get "clues/new"
  get "clues/import"
  post "clues/import"


  get "/admin/import-clues" => "admins#import_clues"
  devise_for :users
  devise_for :admins

  root :to => "static_pages#home"

  resources :clues do
    collection {post :import}
  end

  resources :boards


end
