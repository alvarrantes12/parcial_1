class CreatePokemons < ActiveRecord::Migration[7.0]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.belongs_to :pokemon_trainer
      t.timestamps
    end
  end
end
