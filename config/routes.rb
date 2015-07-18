Rails.application.routes.draw do
  root 'todos#index'
  resources :todos, only: [:index, :create, :destroy, :edit, :update]
  post "send_text/:id", to: "texts#send_text", as: "send_text"

end
