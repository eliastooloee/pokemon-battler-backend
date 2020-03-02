class AddPokemontypeToPokemons < ActiveRecord::Migration[6.0]
  def change
    add_column :pokemons, :pokemontype, :string
  end
end
