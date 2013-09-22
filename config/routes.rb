HackfitHackathon13::Application.routes.draw do
  get "home/index"

  root to: "home#index"

  resources :users
  resources :courses
  resources :contents
end
