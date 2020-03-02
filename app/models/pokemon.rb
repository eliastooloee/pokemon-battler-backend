class Pokemon < ApplicationRecord
  has_many :users_pokemons, dependent: :destroy
  has_many :users, through: :users_pokemons
end
