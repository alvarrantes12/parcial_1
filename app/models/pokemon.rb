class Pokemon < ApplicationRecord
    
    has_many :pokemon_trainers, through: :captured_pokemons

    validates :name, presence: true
end