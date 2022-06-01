module PokemonTrainersHelper

    def levels
        PokemonTrainer.levels.keys.map do |level|
            [t("application.levels.#{level}"), level]
        end
    end

end
