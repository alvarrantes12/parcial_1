module Api
  class CapturedPokemonsController < ApplicationController
    skip_before_action :verify_authenticity_token
    before_action :set_captured_pokemon, only: %i[ show edit update destroy ]
  
    def index
      @captured_pokemon = captured_pokemon.all
    end
  
    def show; end
  
    def new
      @captured_pokemon = captured_pokemon.new
    end
  
    def edit; end
  
    def create
      @captured_pokemon = captured_pokemon.new(captured_pokemon_params)
  
      if @pet.save
        render 'api/captured_pokemons/show', status: :created
      else
        render json: @pet.errors, status: :unprocessable_entity
      end 
    end
  
    def update
      if @captured_pokemon.update(captured_pokemons_params)
        render 'api/captured_pokemons/show', status: :created
      else
        render json: @captured_pokemons.errors, status: :unprocessable_entity
      end
    end
  
    def destroy
      @captured_pokemon.destroy
        render 'api/captured_pokemons/show', status: :created
    end
  
    private
      def set_captured_pokemon
        @captured_pokemon = captured_pokemon.find(params[:id])
      end
  
      def captured_pokemon_params
        params.require(:captured_pokemon).permit(:location)
      end
    end
  end