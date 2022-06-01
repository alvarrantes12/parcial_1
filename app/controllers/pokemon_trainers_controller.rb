class PokemonTrainersController < ApplicationController
  before_action :set_pokemon_trainer, only: %i[ show edit update destroy ]

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
      redirect_to pokemon_trainer_url(@pokemon_trainer), notice: "Pokemon trainer was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update

    if @pokemon_trainer.update(pokemon_trainer_params)
      redirect_to pokemon_trainer_url(@pokemon_trainer), notice: "Pokemon trainer was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end

  end

  def destroy
    @pokemon_trainer.destroy
    redirect_to pokemon_trainers_url, notice: "Pokemon trainer was successfully destroyed."
  end

  private

  def set_pokemon_trainer
    @pokemon_trainer = PokemonTrainer.find(params[:id])
  end

  def pokemon_trainer_params
    params.require(:pokemon_trainer).permit(:first_name, :last_name, :region, :id_number, :level)
  end
end
