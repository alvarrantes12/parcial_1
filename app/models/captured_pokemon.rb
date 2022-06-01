class CapturedPokemon < ApplicationRecord
  belongs_to :pokemon
  belongs_to :pokemon_trainer
end
