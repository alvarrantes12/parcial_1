class AddAttributesToPokemonTrainers < ActiveRecord::Migration[7.0]
  def change
    add_column  :pokemon_trainers, :level, :integer
  end
end
