module Api

class CapturedPokemonsController < ApplicationController
  
  before_action :set_captured_pokemon, only: %i[ show edit update destroy ]
  before_action :set_pokemon_trainer
  before_action :set_pokemon
  skip_before_action :verify_authenticity_token

  def index
    @captured_pokemons = CapturedPokemon.all
  end

  def show; end

  def new
    @captured_pokemon = CapturedPokemon.new
  end

  def edit; end


  private
    def set_captured_pokemon
      @captured_pokemon = CapturedPokemon.find(params[:id])
    end
    
    def set_pokemon_trainer
      @pokemon_trainers =  PokemonTrainer.all.map{|pokemon_trainer|["#{pokemon_trainer.first_name} #{pokemon_trainer.last_name}", pokemon_trainer.id]}
    end

    def set_pokemon
      @pokemons = Pokemon.all.map{|pokemon|["#{pokemon.name}", pokemon.id]}
    end

    def captured_pokemon_params
      params.require(:captured_pokemon).permit(:location, :pokemon_trainer_id, :pokemon_id)
    end
end

end