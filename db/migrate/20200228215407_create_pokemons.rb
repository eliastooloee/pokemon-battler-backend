class CreatePokemons < ActiveRecord::Migration[6.0]
  def change
    create_table :pokemons do |t|
      t.string :species
      t.string :sprite_front
      t.string :sprite_back
      t.integer :stat_speed
      t.integer :stat_special_defense
      t.integer :stat_special_attack
      t.integer :stat_defense
      t.integer :stat_attack
      t.integer :stat_hp
      t.string :description

      t.timestamps
    end
  end
end
