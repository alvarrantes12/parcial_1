require 'rails_helper'

RSpec.describe "captured_pokemons/index", type: :view do
  before(:each) do
    assign(:captured_pokemons, [
      CapturedPokemon.create!(
        location: "Location"
      ),
      CapturedPokemon.create!(
        location: "Location"
      )
    ])
  end

  it "renders a list of captured_pokemons" do
    render
    assert_select "tr>td", text: "Location".to_s, count: 2
  end
end
