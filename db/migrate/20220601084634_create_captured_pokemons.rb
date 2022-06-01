class CreateCapturedPokemons < ActiveRecord::Migration[7.0]
  def change
    create_table :captured_pokemons do |t|
      t.string :location

      t.timestamps
    end
  end
end
