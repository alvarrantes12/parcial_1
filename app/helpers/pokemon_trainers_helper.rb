module PokemonTrainersHelper
    def levels
        PokemonTrainer.levels.keys.map do |level|
            [t("activerecord.attributes.pokemon_trainer.levels.#{level}"), level]
        end    
    end
end
