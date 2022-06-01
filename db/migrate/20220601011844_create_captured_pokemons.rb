class CreateCapturedPokemons < ActiveRecord::Migration[7.0]
  def change
    create_table :captured_pokemons do |t|
      t.string :location
      t.belongs_to :pokemon
      t.belongs_to :pokemon_trainer

      t.timestamps
    end
  end
end
