class PokemonTrainersController < ApplicationController
  before_action :set_pokemon_trainer, only: %i[show edit update destroy]

  def index
    @pokemon_trainers = PokemonTrainer.all
  end

  def show; end

  def new
    @pokemon_trainer = PokemonTrainer.new
  end

  def edit; end

  def create
    @pokemon_trainer = PokemonTrainer.new(pokemon_trainer_params)

    if @pokemon_trainer.save
      PokemonsService.new.save_Pokemons
      redirect_to pokemon_trainer_url(@pokemon_trainer), notice: t('application.was_successfuly_created', model: t('activerecord.modules.pokemon_trainer.one'))
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @pokemon_trainer.update(pokemon_trainer_params)
      redirect_to pokemon_trainer_url(@pokemon_trainer), notice: t('application.was_successfuly_updated', model: t('activerecord.modules.pokemon_trainer.one'))
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @pokemon_trainer.destroy

    redirect_to pokemon_trainers_url, notice: t('application.was_successfuly_deleted', model: t('activerecord.modules.pokemon_trainer.one'))
  end

  private

  def set_pokemon_trainer
    @pokemon_trainer = PokemonTrainer.find(params[:id])
  end

  def pokemon_trainer_params
    params.require(:pokemon_trainer).permit(:first_name, :last_name, :region, :id_number, :level)
  end
end
