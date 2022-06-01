class PokemonsController < ApplicationController
  before_action :set_pokemon, only: %i[ show edit update destroy ]

  def index
    @pokemons = Pokemon.all
  end


  def new
    @pokemon = Pokemon.new
  end


  private
    def set_pokemon
      @pokemon = Pokemon.find(params[:id])
    end

    def pokemon_params
      params.require(:pokemon).permit(:name)
    end
end
