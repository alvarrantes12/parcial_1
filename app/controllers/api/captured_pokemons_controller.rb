module Api
  class CapturedPokemonsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index
      @captured_pokemons = CapturedPokemon.all
    end
  end
end
