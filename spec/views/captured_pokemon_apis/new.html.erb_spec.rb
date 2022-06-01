require 'rails_helper'

RSpec.describe "captured_pokemon_apis/new", type: :view do
  before(:each) do
    assign(:captured_pokemon_api, CapturedPokemonApi.new())
  end

  it "renders new captured_pokemon_api form" do
    render

    assert_select "form[action=?][method=?]", captured_pokemon_apis_path, "post" do
    end
  end
end
