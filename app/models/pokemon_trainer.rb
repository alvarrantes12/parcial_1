class PokemonTrainer < ApplicationRecord

    has_many :pokemons, through: :captured_pokemons

    validates :first_name, presence: true, length: { maximum: 10 }
    validates :last_name, presence: true, length: { maximum: 15 }
    validates :id_number, presence: true, length: { minimum: 8, maximum: 10 }, uniqueness: true

    enum level: { bj: 0, med: 1, alt: 2 }
end
