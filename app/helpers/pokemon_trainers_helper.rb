module PokemonTrainersHelper
  def method_level
    PokemonTrainer.levels.keys.map do |level|
      [t("activerecord.attributes.level.levels.#{level}"), level]
    end
  end
end
