Rails.application.routes.draw do
  root to:'homes#top'
  #destroy_user_session DELETE /users/sign_out(.:format) devise/sessions#destroy
  
  devise_for:users
  delete 'users/sign_out' => 'sessions#destroy'
  get "/homes/about" => "homes#about",as:"about"
  resources:books
  get 'books/:id' => 'books#show'
  resources:users,only: [:show, :edit, :update]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
