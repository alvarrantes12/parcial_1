class PokemonsController < ApplicationController
  before_action :set_pokemon, only: %i[ show edit update destroy ]


  def index
    @pokemons = Pokemon.all
  end


  def show;end


  def new
    @pokemon = Pokemon.new
  end


  def edit;end


  def create
    @pokemon = Pokemon.new(pokemon_params)

    
      if @pokemon.save
        redirect_to pokemon_url(@pokemon), notice: "Pokemon was successfully created." 
        
      else
        render :new, status: :unprocessable_entity 
        
      end
    
  end

  
  def update
    
      if @pokemon.update(pokemon_params)
        redirect_to pokemon_url(@pokemon), notice: "Pokemon was successfully updated." 
        
      else
        render :edit, status: :unprocessable_entity 
        
      end
    
  end


  def destroy
    @pokemon.destroy

    
     redirect_to pokemons_url, notice: "Pokemon was successfully destroyed." 
      
    
  end

  private
    
    def set_pokemon
      @pokemon = Pokemon.find(params[:id])
    end

   
    def pokemon_params
      params.fetch(:pokemon, {})
    end
end
