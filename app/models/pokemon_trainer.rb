class PokemonTrainer < ApplicationRecord
    validates :first_name, presence: true, length: {minimum: 1, maximum: 10}
    validates :last_name, presence: true, length: {minimum: 1, maximum: 15}
    validates :id_number,presence: true, uniqueness: true, length: {minimum: 8, maximum: 10}

    has_many :captured_pokemons
    has_many :pokemons, through: :captured_pokemons

    enum level: {high: 0, medium: 1, low: 2}
end
