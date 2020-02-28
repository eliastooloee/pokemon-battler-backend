class UsersPokemonSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :pokemon_id
end
