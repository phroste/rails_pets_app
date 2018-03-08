Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :owners
  resources :pets
  get "owners/:id/pets", to: "owners#pets_by_owner"
end
