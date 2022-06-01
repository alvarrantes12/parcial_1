class PokemonTrainer < ApplicationRecord

    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :id_number, presence: true, uniqueness: true

    enum level: {high: 0, medium: 1, low: 2}
end
