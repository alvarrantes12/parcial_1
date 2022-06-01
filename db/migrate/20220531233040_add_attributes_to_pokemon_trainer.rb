class AddAttributesToPokemonTrainer < ActiveRecord::Migration[7.0]
  def change
    add_column :pokemon_trainer, :level, :integer
  end
end
