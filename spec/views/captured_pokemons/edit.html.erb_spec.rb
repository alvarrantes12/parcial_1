require 'rails_helper'

RSpec.describe "captured_pokemons/edit", type: :view do
  before(:each) do
    @captured_pokemon = assign(:captured_pokemon, CapturedPokemon.create!(
      location: "MyString"
    ))
  end

  it "renders the edit captured_pokemon form" do
    render

    assert_select "form[action=?][method=?]", captured_pokemon_path(@captured_pokemon), "post" do

      assert_select "input[name=?]", "captured_pokemon[location]"
    end
  end
end
