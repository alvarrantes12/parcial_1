class Api::CapturedPokemonsController < ApplicationController
  before_action :set_captured_pokemon, only: %i[ show edit update destroy ]
  skip_before_action :verify_authenticity_token
  
 
  def index
    @captured_pokemons = CapturedPokemon.all
  end


  private
    def set_captured_pokemon
      @captured_pokemon = CapturedPokemon.find(params[:id])
    end

    def captured_pokemon_params
      params.require(:captured_pokemon).permit(:location, :pokemon_id, :pokemon_trainer_id)
    end 

end

  

