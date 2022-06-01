require 'rails_helper'

RSpec.describe "captured_pokemons/index", type: :view do
  before(:each) do
    assign(:captured_pokemons, [
      CapturedPokemon.create!(),
      CapturedPokemon.create!()
    ])
  end

  it "renders a list of captured_pokemons" do
    render
  end
end
