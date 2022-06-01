class PokemonTrainer < ApplicationRecord

    validates :first_name, presence: true
    validates_length_of :first_name, maximum: 10
    validates :last_name, presence: true
    validates_length_of :last_name, maximum: 15
    validates :id_number, presence: true, uniqueness: true
    validates_length_of :id_number, maximum: 10, minimum: 8


    enum level: { high: 0, medium: 1, low: 2 }

end
