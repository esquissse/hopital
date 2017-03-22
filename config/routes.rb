Rails.application.routes.draw do
  resources :actes
  resources :types_actes
  resources :docteurs
  resources :services
  resources :sejours
  root :to => "patients#index"
  resources :types_donnees_vitales
  resources :donnees_vitales
  resources :contacts
  resources :patients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
