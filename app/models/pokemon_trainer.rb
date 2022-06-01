class PokemonTrainer < ApplicationRecord
    validates :first_name, length: { maximum: 10 }, presence: true
    validates :last_name, length: { maximum: 15}, presence: true
    validates :id_number, length: { minimum: 8, maximum: 10}, presence: true, uniqueness: true
    enum level: {high: 0, medium: 1, low: 2}
end
