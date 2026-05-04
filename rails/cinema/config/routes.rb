Rails.application.routes.draw do
  resources :tickets
  get "up" => "rails/health#show", as: :rails_health_check

  root to: "pages#index"
  get "/horarios", to: "pages#schedule"
end
