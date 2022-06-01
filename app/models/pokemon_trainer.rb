class PokemonTrainer < ApplicationRecord
    validates :first_name, presence: true, length: {maximum: 10}
    validates :last_name, presence: true, length: {maximum: 15} 
    validates :id_number, presence: true, length: {in: 8..10}, uniqueness: true      
    
    enum level: {high: 0, medium: 1, low: 2}

    has_many :pokemons, through: :captured_pokemons
    has_many :captured_pokemons, dependent: :destroy
end
