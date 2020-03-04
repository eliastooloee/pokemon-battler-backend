class UsersPokemonsController < ApplicationController
  def create
    users_pokemon = UsersPokemon.new(users_pokemon_params)
    users_pokemon.save
    render json: users_pokemon
  end

  private

  def users_pokemon_params
    params.require(:users_pokemon).permit(:pokemon_id, :user_id)
  end
end
