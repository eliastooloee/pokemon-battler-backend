class UsersPokemonsController < ApplicationController
  def index
    users_pokemon = UsersPokemon.all
    render json: pokemons
  end
  
  def create
    users_pokemon = UsersPokemon.new(users_pokemon_params)
    users_pokemon.save
    render json: users_pokemon
  end

  def find_users_pokemons
    @pokemons = UsersPokemon.find_my_pokemons(params[:user_id])
    render json: @pokemons
  end

  private

  def users_pokemon_params
    params.require(:users_pokemon).permit(:pokemon_id, :user_id)
  end
end
