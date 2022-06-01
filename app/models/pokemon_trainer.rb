class PokemonTrainer < ApplicationRecord
    validates :first_name, presence: true, length: {minimun: 1, maximum:10} 
    validates :last_name, presence: true, length: {minimun: 1, maximum:15} 
    validates :id_number, uniqueness: true, presence: true, length: {minimun: 8, maximum:10} 

    enum level: { low: 0, medium: 1, high: 2 }
end
