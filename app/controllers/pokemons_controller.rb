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
    params.require(:pokemon).permit(:species, :sprite_front, :sprite_back, :stat_speed, :stat_special_defense, :stat_special_attack, :stat_defense, :stat_attack, :stat_hp, :description, :pokemontype)
  end
end
