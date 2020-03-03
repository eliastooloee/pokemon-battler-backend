class User < ApplicationRecord
  has_many :users_pokemons, dependent: :destroy
  has_many :pokemons, through: :users_pokemons
end
