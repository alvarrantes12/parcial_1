class Pokemon < ApplicationRecord

    has_many :captured_pokemons
    has_many :pokemon_trainer, through: :captured_pokemons 

end
