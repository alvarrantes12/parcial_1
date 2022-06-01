require 'rails_helper'

RSpec.describe "Pokemons", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/pokemons/index"
      expect(response).to have_http_status(:success)
    end
  end

end
