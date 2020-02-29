class PokemonsController < ApplicationController
  before_action :find_pokemon, only: [:show]

  def index
    pokemons = Pokemon.all
    render json: pokemons
  end

  def show
    render json: pokemon
  end

  def new
    pokemon = Pokemon.new
  end

  def create
    pokemon = Pokemon.new(pokemon_params)
    pokemon.save
    render json: pokemon
  end

  private

  def find_pokemon
    pokemon = Pokemon.find(params[:id])
    render json: pokemon
  end

  def pokemon_params
    params.require(:pokemon).permit(:name)
  end
end
