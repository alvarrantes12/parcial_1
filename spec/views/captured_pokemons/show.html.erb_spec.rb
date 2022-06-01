require 'rails_helper'

RSpec.describe "captured_pokemons/show", type: :view do
  before(:each) do
    @captured_pokemon = assign(:captured_pokemon, CapturedPokemon.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
