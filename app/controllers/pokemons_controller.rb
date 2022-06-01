class PokemonsController < ApplicationController
    before_action :set_pokemon, only: %i[ show edit update destroy ]

    def index
        @pokemons = Pokemon.all
    end   
    
    def show; end
end