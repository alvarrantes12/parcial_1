class Pokemon < ApplicationRecord
    has_many :captured_pokemons
    has_many :pokemon_trainers, through: :captured_pokemons
end
