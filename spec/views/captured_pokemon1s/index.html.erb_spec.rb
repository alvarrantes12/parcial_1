require 'rails_helper'

RSpec.describe "captured_pokemon1s/index", type: :view do
  before(:each) do
    assign(:captured_pokemon1s, [
      CapturedPokemon1.create!(
        location: "Location"
      ),
      CapturedPokemon1.create!(
        location: "Location"
      )
    ])
  end

  it "renders a list of captured_pokemon1s" do
    render
    assert_select "tr>td", text: "Location".to_s, count: 2
  end
end
