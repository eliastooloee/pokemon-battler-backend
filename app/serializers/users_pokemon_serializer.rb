class UsersPokemonSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :pokemon_id
  belongs_to :user
  belongs_to :pokemon
end
