class PokemonTrainer < ApplicationRecord
    has_many :captured_pokemons
    has_many :pokemons, through: :captured_pokemons

    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :id_number, presence: true, uniqueness: true

    enum level: {high: 0, medium: 1, low: 2}
end
