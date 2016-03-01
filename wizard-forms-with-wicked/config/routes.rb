Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  resources :user_steps
end
