Rails.application.routes.draw do
  devise_for :users

  root to:'homes#top'
  
  #destroy_user_session DELETE /users/sign_out(.:format) devise/sessions#destroy
  delete  "users/sign_out" => "devise/sessions#destroy"
  
  get "/homes/about" => "homes#about",as:"about"
  resources:books
  resources:users,only: [:index, :create, :edit, :show, :update, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
