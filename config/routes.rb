Rails.application.routes.draw do
  resources :pokemons_types
  resources :types
  resources :users_pokemons
  resources :pokemons
  resources :users
  get '/users/:id/pokemons', to: "users_pokemons#find_users_pokemons"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
