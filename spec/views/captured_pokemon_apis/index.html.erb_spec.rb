require 'rails_helper'

RSpec.describe "captured_pokemon_apis/index", type: :view do
  before(:each) do
    assign(:captured_pokemon_apis, [
      CapturedPokemonApi.create!(),
      CapturedPokemonApi.create!()
    ])
  end

  it "renders a list of captured_pokemon_apis" do
    render
  end
end
