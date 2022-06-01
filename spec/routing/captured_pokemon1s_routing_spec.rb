require "rails_helper"

RSpec.describe CapturedPokemon1sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/captured_pokemon1s").to route_to("captured_pokemon1s#index")
    end

    it "routes to #new" do
      expect(get: "/captured_pokemon1s/new").to route_to("captured_pokemon1s#new")
    end

    it "routes to #show" do
      expect(get: "/captured_pokemon1s/1").to route_to("captured_pokemon1s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/captured_pokemon1s/1/edit").to route_to("captured_pokemon1s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/captured_pokemon1s").to route_to("captured_pokemon1s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/captured_pokemon1s/1").to route_to("captured_pokemon1s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/captured_pokemon1s/1").to route_to("captured_pokemon1s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/captured_pokemon1s/1").to route_to("captured_pokemon1s#destroy", id: "1")
    end
  end
end
