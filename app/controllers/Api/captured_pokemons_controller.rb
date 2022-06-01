class Api::CapturedPokemonsController < ApplicationController
    before_action :set_captured_pokemon, only: %i[ show edit update destroy ]
    skip_before_action :verify_authenticity_token

  
     def index
      @captured_pokemons = CapturedPokemon.all
    end
  
    def show; end
  
  end