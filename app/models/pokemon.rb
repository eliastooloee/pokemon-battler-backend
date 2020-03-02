class Pokemon < ApplicationRecord
  has_many :users_pokemons, dependent: :destroy
  has_many :pokemons_types, dependent: :destroy
  has_many :users, through: :users_pokemons
  has_many :types, through: :pokemons_types
end
