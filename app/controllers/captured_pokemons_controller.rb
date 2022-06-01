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
    if @captured_pokemon.save
      redirect_to captured_pokemon_url(@captured_pokemon), notice: t("application.was_created", model: t("activerecord.modules.captured_pokemons.one"))
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @captured_pokemon.update(captured_pokemon_params)
      redirect_to captured_pokemon_url(@captured_pokemon), notice: t("application.was_updated", model: t("activerecord.modules.captured_pokemons.one"))
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @captured_pokemon.destroy
    redirect_to captured_pokemons_url, notice: t("application.was_destroyed", model: t("activerecord.modules.captured_pokemons.one"))
  end

  private

  def set_captured_pokemon
    @captured_pokemon = CapturedPokemon.find(params[:id])
  end

  def captured_pokemon_params
    params.require(:captured_pokemon).permit(:location)
  end

end