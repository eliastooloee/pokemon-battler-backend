class PokemonsTypeSerializer < ActiveModel::Serializer
  attributes :id, :pokemon_id, :type1_id, :type2_id
end
