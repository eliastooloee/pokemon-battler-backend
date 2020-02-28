class Pokemon < ApplicationRecord
  has_many :users, through: :users_pokemons
  has_many :users_pokemons, dependent: :destroy
  has_many :types, through: :pokemons_types
  has_many :pokemons_types, dependent: :destroy
end
