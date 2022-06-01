require 'rails_helper'

RSpec.describe "captured_pokemons/show", type: :view do
  before(:each) do
    @captured_pokemon = assign(:captured_pokemon, CapturedPokemon.create!(
      location: "Location"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Location/)
  end
end
