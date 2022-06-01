require 'rails_helper'

RSpec.describe "captured_pokemon_apis/edit", type: :view do
  before(:each) do
    @captured_pokemon_api = assign(:captured_pokemon_api, CapturedPokemonApi.create!())
  end

  it "renders the edit captured_pokemon_api form" do
    render

    assert_select "form[action=?][method=?]", captured_pokemon_api_path(@captured_pokemon_api), "post" do
    end
  end
end
