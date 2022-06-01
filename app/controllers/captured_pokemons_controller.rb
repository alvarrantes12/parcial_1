class CapturedPokemonsController < ApplicationController
  before_action :set_captured_pokemon, only: %i[ show edit update destroy ]

  def index
    @captured_pokemons = CapturedPokemon.all
  end


  def show; end

  def new
    @captured_pokemon = CapturedPokemon.new
  end

  def edit; end

  def create
    @captured_pokemon = CapturedPokemon.new(captured_pokemon_params)

    respond_to do |format|
      if @captured_pokemon.save
        format.html { redirect_to captured_pokemon_url(@captured_pokemon), notice: "Captured pokemon was successfully created." }
        format.json { render :show, status: :created, location: @captured_pokemon }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @captured_pokemon.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @captured_pokemon.update(captured_pokemon_params)
        format.html { redirect_to captured_pokemon_url(@captured_pokemon), notice: "Captured pokemon was successfully updated." }
        format.json { render :show, status: :ok, location: @captured_pokemon }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @captured_pokemon.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @captured_pokemon.destroy

    respond_to do |format|
      format.html { redirect_to captured_pokemons_url, notice: "Captured pokemon was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_captured_pokemon
      @captured_pokemon = CapturedPokemon.find(params[:id])
    end

    def captured_pokemon_params
      params.require(:captured_pokemon).permit(:location)
    end
end
