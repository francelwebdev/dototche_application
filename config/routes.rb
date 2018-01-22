Rails.application.routes.draw do

  root to: "welcome#index", as: "accueil"

  get "doctors/benefits", to: 'doctors#benefit', as: "benefice"

  get "doctors/search" , to: "doctors#index", as: "recherche"

  resources :doctors


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
