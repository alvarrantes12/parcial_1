class Pokemon < ApplicationRecord
  validates :name, presence: true

  has_many :captured_pokemons
  has_many :pokemons, through: :captured_pokemons
end