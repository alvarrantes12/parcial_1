class Pokemon < ApplicationRecord
    validates :name, presence: true   
    
    has_many :pokemon_trainers
end
