module Api
  class CapturedPokemonsController < ApplicationController

    def index
      @captured_pokemons = CapturedPokemon.all
    end

  end
end