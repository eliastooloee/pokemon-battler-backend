class CreatePokemonsTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :pokemons_types do |t|
      t.integer :pokemon_id
      t.integer :type1_id
      t.integer :type2_id

      t.timestamps
    end
  end
end
