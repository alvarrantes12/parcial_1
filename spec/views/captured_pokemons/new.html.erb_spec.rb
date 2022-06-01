require 'rails_helper'

RSpec.describe "captured_pokemons/new", type: :view do
  before(:each) do
    assign(:captured_pokemon, CapturedPokemon.new(
      location: "MyString"
    ))
  end

  it "renders new captured_pokemon form" do
    render

    assert_select "form[action=?][method=?]", captured_pokemons_path, "post" do

      assert_select "input[name=?]", "captured_pokemon[location]"
    end
  end
end
