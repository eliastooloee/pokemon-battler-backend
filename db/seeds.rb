# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
pm_array = []
desc_array = []

# right now this will only get data for the first nine pokemon
for i in 1..9
  data = open("https://pokeapi.co/api/v2/pokemon/#{i}").read
  json = JSON.parse(data)
  pm_array.push(json)
end

# puts pm_array[0].keys

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
    description: "tbd",
  )
end
