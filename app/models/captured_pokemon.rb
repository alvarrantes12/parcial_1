class CapturedPokemon < ApplicationRecord
    belong_to :pokemon_trainer
    belongs_to :pokemon
end
