class PokemonTrainer < ApplicationRecord
  validates :first_name, presence: true, length: {maximum: 10}
  validates :last_name, presence: true, length: {maximum: 15}
  validates :id_number, presence: true, length: {minimum: 8, maximum: 10}, uniqueness: true
end
