class PokemonTrainer < ApplicationRecord
  validates :first_name, presence: true, length: {maximum: 10}
  validates :last_name, presence: true, length: {maximum: 15}
  validates :id_number, presence: true, length: {minimum: 8, maximum: 10}, uniqueness: true

  enum level: { low: 0, medium: 1, high: 2}

  has_many :captured_pokemons
  has_many :pokemons, through: :captured_pokemons
end
