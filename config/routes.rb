Rails.application.routes.draw do
  devise_for :users

  root to:'homes#top'
  #destroy_user_session DELETE /users/sign_out(.:format) devise/sessions#destroy
  
  delete 'users/sign_out' => 'sessions#destroy'
  get "/homes/about" => "homes#about",as:"about"
  resources:books
  get 'books/:id' => 'books#show'
  resources:users,only: [:index,:create, :show, :edit, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
