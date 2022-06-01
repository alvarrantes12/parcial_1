require 'rails_helper'

RSpec.describe "captured_pokemon1s/show", type: :view do
  before(:each) do
    @captured_pokemon1 = assign(:captured_pokemon1, CapturedPokemon1.create!(
      location: "Location"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Location/)
  end
end
