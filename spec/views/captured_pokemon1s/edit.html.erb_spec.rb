require 'rails_helper'

RSpec.describe "captured_pokemon1s/edit", type: :view do
  before(:each) do
    @captured_pokemon1 = assign(:captured_pokemon1, CapturedPokemon1.create!(
      location: "MyString"
    ))
  end

  it "renders the edit captured_pokemon1 form" do
    render

    assert_select "form[action=?][method=?]", captured_pokemon1_path(@captured_pokemon1), "post" do

      assert_select "input[name=?]", "captured_pokemon1[location]"
    end
  end
end
