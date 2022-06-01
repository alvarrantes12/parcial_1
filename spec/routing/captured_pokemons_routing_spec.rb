require "rails_helper"

RSpec.describe CapturedPokemonsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/captured_pokemons").to route_to("captured_pokemons#index")
    end

    it "routes to #new" do
      expect(get: "/captured_pokemons/new").to route_to("captured_pokemons#new")
    end

    it "routes to #show" do
      expect(get: "/captured_pokemons/1").to route_to("captured_pokemons#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/captured_pokemons/1/edit").to route_to("captured_pokemons#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/captured_pokemons").to route_to("captured_pokemons#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/captured_pokemons/1").to route_to("captured_pokemons#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/captured_pokemons/1").to route_to("captured_pokemons#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/captured_pokemons/1").to route_to("captured_pokemons#destroy", id: "1")
    end
  end
end
