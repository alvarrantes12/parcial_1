class PokemonsController < ApplicationController
    before_action :set_pokemon, only: %i[ show edit update destroy ]

  def index
    @pokemons = Pokemon.all
  end

  def show; end

  def new
    @pokemon = Pokemon.new
  end

  def edit; end

  def create
    @pokemon = Pokemon.new(pokemon_params)

    if @pokemon.save

      redirect_to pokemon_url(@pokemon), notice: t("application.created")
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update

    if @pokemon.update(pokemon_params)
      redirect_to pokemon_url(@pokemon), notice: t("application.updated")
    else
      render :edit, status: :unprocessable_entity
    end

  end

  def destroy
    @pokemon.destroy

    redirect_to pokemon_url, notice: t("application.deleted")
  end

  private

  def set_pokemon
    @pokemon = Pokemon.find(params[:id])
  end

  def pokemon_params
    params.require(:pokemon).permit(:name)
  end
end
