class Api::CapturedPokemonsController < ApplicationController
    before_action :set_pet, only: %i[ show edit update destroy ]
    skip_before_action :verify_authenticity_token
    before_action :set_pokemons
    before_action :set_pokemon_trainers
    
    def index
      @captured_pokemons = CapturedPokemon.all
    end
  
  
    def show;end
     
    def edit;end
  
    private
    def set_captured_pokemon
      @captured_pokemon = CapturedPokemon.find(params[:id])
    end


    def set_pokemons
      @pokemons = Pokemon.all.map {|pokemon| ["#{pokemon.name}", pokemon.id]}

    end

    def set_pokemon_trainers
      @pokemon_trainers = PokemonTrainer.all.map {|pokemon_trainer| ["#{pokemon_trainer.first_name} #{pokemon_trainer.last_name} - #{pokemon_trainer.id_number}", pokemon_trainer.id] }

    end
  
      def captured_pokemon_params
        params.require(:captured_pokemon).permit(:location, :pokemon_trainer_id, :pokemon_id)
      end
  end