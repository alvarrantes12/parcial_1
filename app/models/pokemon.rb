class Pokemon < ApplicationRecord
    has_many :pokemon_trainers, through: :captured_pokemons
end