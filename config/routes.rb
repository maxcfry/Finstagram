Rails.application.routes.draw do
  Rails.application.routes.draw do

    get "about-us", to: "about#index", as: :about

    root to: "main#index"
    get "sign_up", to: "registrations#new"
    post "sign_up", to: "registrations#create"
    delete "logout", to: "sessions#destroy"

    # root to: "articles#index"
  
    resources :articles do
      resources :comments
    end
  end
  
end

