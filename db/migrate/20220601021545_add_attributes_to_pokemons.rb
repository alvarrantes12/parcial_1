class AddAttributesToPokemons < ActiveRecord::Migration[7.0]
  def change
    add_column :pokemons, :name, :string
  end
end
