class CreatePokemonTrainers < ActiveRecord::Migration[7.0]
  def change
    create_table :pokemon_trainers do |t|
      t.string :first_name
      t.string :last_name
      t.string :region
      t.string :id_number
      t.integer :level
      t.timestamps
    end
  end
end
