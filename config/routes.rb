Rails.application.routes.draw do
  root 'todos#index'

  resources :todos, only: [:index, :create, :destroy, :edit, :update]

  post "send" => "texts#send_text"

end
