class PokemonTrainer < ApplicationRecord
    validates :first_name, presence: true
    validates :first_name, length: {maximum: 10}

    validates :last_name, presence: true
    validates :last_name, length: {maximum: 15}
    
    validates :id_number, presence: true
    validates :id_number, length: {minimum: 8}
    validates :id_number, length: {maximum: 10}
    validates :id_number, uniqueness: true

    enum level: { low: 1, medium: 2, high: 3 }


    has_many :captured_pokemons
    has_many :pokemons, through: :captured_pokemons
end
