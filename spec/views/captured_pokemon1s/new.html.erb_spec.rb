require 'rails_helper'

RSpec.describe "captured_pokemon1s/new", type: :view do
  before(:each) do
    assign(:captured_pokemon1, CapturedPokemon1.new(
      location: "MyString"
    ))
  end

  it "renders new captured_pokemon1 form" do
    render

    assert_select "form[action=?][method=?]", captured_pokemon1s_path, "post" do

      assert_select "input[name=?]", "captured_pokemon1[location]"
    end
  end
end
