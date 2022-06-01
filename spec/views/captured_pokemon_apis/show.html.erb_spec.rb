require 'rails_helper'

RSpec.describe "captured_pokemon_apis/show", type: :view do
  before(:each) do
    @captured_pokemon_api = assign(:captured_pokemon_api, CapturedPokemonApi.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
