# class CapturedPokemonsController < ApplicationController
#   before_action :set_captured_pokemon, only: %i[ show edit update destroy ]

#   # GET /captured_pokemons or /captured_pokemons.json
#   def index
#     @captured_pokemons = CapturedPokemon.all
#   end

#   # GET /captured_pokemons/1 or /captured_pokemons/1.json
#   def show
#   end

#   # GET /captured_pokemons/new
#   def new
#     @captured_pokemon = CapturedPokemon.new
#   end

#   # GET /captured_pokemons/1/edit
#   def edit
#   end

#   # POST /captured_pokemons or /captured_pokemons.json
#   def create
#     @captured_pokemon = CapturedPokemon.new(captured_pokemon_params)

#     respond_to do |format|
#       if @captured_pokemon.save
#         format.html { redirect_to captured_pokemon_url(@captured_pokemon), notice: "Captured pokemon was successfully created." }
#         format.json { render :show, status: :created, location: @captured_pokemon }
#       else
#         format.html { render :new, status: :unprocessable_entity }
#         format.json { render json: @captured_pokemon.errors, status: :unprocessable_entity }
#       end
#     end
#   end

#   # PATCH/PUT /captured_pokemons/1 or /captured_pokemons/1.json
#   def update
#     respond_to do |format|
#       if @captured_pokemon.update(captured_pokemon_params)
#         format.html { redirect_to captured_pokemon_url(@captured_pokemon), notice: "Captured pokemon was successfully updated." }
#         format.json { render :show, status: :ok, location: @captured_pokemon }
#       else
#         format.html { render :edit, status: :unprocessable_entity }
#         format.json { render json: @captured_pokemon.errors, status: :unprocessable_entity }
#       end
#     end
#   end

#   # DELETE /captured_pokemons/1 or /captured_pokemons/1.json
#   def destroy
#     @captured_pokemon.destroy

#     respond_to do |format|
#       format.html { redirect_to captured_pokemons_url, notice: "Captured pokemon was successfully destroyed." }
#       format.json { head :no_content }
#     end
#   end

#   private
#     # Use callbacks to share common setup or constraints between actions.
#     def set_captured_pokemon
#       @captured_pokemon = CapturedPokemon.find(params[:id])
#     end

#     # Only allow a list of trusted parameters through.
#     def captured_pokemon_params
#       params.require(:captured_pokemon).permit(:location)
#     end
# end

class CapturedPokemonsController < ApplicationController
  before_action :set_captured_pokemon, only: %i[ show edit update destroy ]
	before_action :set_pokemon_trainers
  before_action :set_pokemons

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

  def set_pokemon_trainers
    @pokemon_trainers = PokemonTrainer.all.map { |pokemon_trainer| ["#{pokemon_trainer.first_name} #{pokemon_trainer.last_name} - #{pokemon_trainer.id_number}", pokemon_trainer.id] }
  end
  
  def set_pokemons
    @pokemons = Pokemon.all.pluck(:name, :id)
  end

  def captured_pokemon_params
    params.require(:captured_pokemon).permit(:location, :pokemon_id, :pokemon_trainer_id)
  end

end