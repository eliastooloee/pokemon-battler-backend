class UsersPokemon < ApplicationRecord
  belongs_to :user
  belongs_to :pokemon

  def find_my_pokemons(user_id)
    UsersPokemon.where(user_id: user_id)
  end
end
