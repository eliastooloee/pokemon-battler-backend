class User < ApplicationRecord
  has_many :pokemons, through: :users_pokemons
  has_many :users_pokemons, dependent: :destroy
end
