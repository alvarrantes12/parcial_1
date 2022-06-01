class Pokemon < ApplicationRecord
    validates :name, presence: true
    has_many :pokemon_trainers, through: :captured_pokemons
    has_many :captured_pokemons, dependent: :destroy
end