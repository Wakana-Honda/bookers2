Rails.application.routes.draw do
  root to:"homes#top"
  devise_for :users
  get 'books'=>'books#new'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
