class UserSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :users_pokemons
  has_many :pokemons, through: :users_pokemons
end
