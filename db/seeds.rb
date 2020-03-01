# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
pm_array = []
desc_array = []

for i in 1..151
  # get data about each of the first 151 pokemon
  data = open("https://pokeapi.co/api/v2/pokemon/#{i}").read
  json_data = JSON.parse(data)
  pm_array.push(json_data)
  # get descriptions for each of the first 151 pokemon
  desc = open("https://pokeapi.co/api/v2/pokemon-species/#{i}").read
  json_desc = JSON.parse(desc)
  desc_array.push(json_desc)
end

for pokemon in pm_array
  Pokemon.create(
    species: pokemon["name"],
    sprite_front: pokemon["sprites"]["front_default"],
    sprite_back: pokemon["sprites"]["back_default"],
    stat_speed: pokemon["stats"][0]["base_stat"],
    stat_special_defense: pokemon["stats"][1]["base_stat"],
    stat_special_attack: pokemon["stats"][2]["base_stat"],
    stat_defense: pokemon["stats"][3]["base_stat"],
    stat_attack: pokemon["stats"][4]["base_stat"],
    stat_hp: pokemon["stats"][5]["base_stat"],
    description: desc_array[pokemon["id"] - 1]["flavor_text_entries"][desc_array[pokemon["id"] - 1]["flavor_text_entries"].length - 1]["flavor_text"],
  )
end
