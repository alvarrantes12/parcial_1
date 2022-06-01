module PokemonTrainersHelper

    def levels_p
        PokemonTrainer.levels.keys.map do |levels|
            [t("activerecord.attributes.pokemon_trainer.levels.#{levels}"), levels]
        end
    end
end
