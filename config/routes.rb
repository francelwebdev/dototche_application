Rails.application.routes.draw do
  root to: "welcome#index", as: "accueil"

  resources :doctors

  get "doctors/benefits", to: 'doctors#benefit', as: "benefits"

  get "doctors/search" , to: "doctors#index", as: "recherche"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
