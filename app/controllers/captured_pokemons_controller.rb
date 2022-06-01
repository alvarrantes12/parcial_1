class CapturedPokemonsController < ApplicationController
  before_action :set_captured_pokemon, only: %i[show edit update destroy]
  before_action :set_pokemon_trainer
  before_action :set_pokemon
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
      redirect_to captured_pokemon_url(@captured_pokemon), notice: t('application.was_successfuly_created', model: t('activerecord.modules.captured_pokemon.one'))

    else
      render :new, status: :unprocessable_entity

    end
  end

  def update
    if @captured_pokemon.update(captured_pokemon_params)
      redirect_to captured_pokemon_url(@captured_pokemon), notice: t('application.was_successfuly_updated', model: t('activerecord.modules.captured_pokemon.one'))

    else
      render :edit, status: :unprocessable_entity

    end
  end

  def destroy
    @captured_pokemon.destroy

    redirect_to captured_pokemons_url, notice: t('application.was_successfuly_deleted', model: t('activerecord.modules.captured_pokemon.one'))
  end

  private

  def set_captured_pokemon
    @captured_pokemon = CapturedPokemon.find(params[:id])
  end

  def set_pokemon_trainer
    @pokemon_trainers = PokemonTrainer.all.map do |pokemon_trainer|
      ["#{pokemon_trainer.first_name} #{pokemon_trainer.last_name} - #{pokemon_trainer.id_number} ", pokemon_trainer.id]
    end
  end

  def set_pokemon
    @pokemons = Pokemon.all.map do |pokemon|
      [pokemon.name, pokemon.id]
    end
  end

  def captured_pokemon_params
    params.require(:captured_pokemon).permit(:location, :pokemon_trainer_id, :pokemon_id)
  end
end
