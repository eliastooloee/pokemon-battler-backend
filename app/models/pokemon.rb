class Pokemon < ApplicationRecord
  has_many :users_pokemons, dependent: :destroy
  has_many :users, through: :users_pokemons

  def find_my_pokemons(user_id)
    UsersPokemon.where(user_id: user_id)
  end
end
