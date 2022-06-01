class PokemonTrainer < ApplicationRecord
    validates :first_name, presence: true, length: {minimum: 1, maximum: 10}
    validates :last_name, presence: true, length: {minimum: 1, maximum: 15} 
    validates :id_number, uniqueness: true, presence: true,length: {minimum: 8, maximum: 10}

    enum level: { Bajo: 0, Medio: 1, Alto:2 }
end
