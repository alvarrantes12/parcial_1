module api
class CapturedPokemonsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_captured_pokemon, only: %i[ show edit update destroy ]
  before_action :set_pokemon_trainers
  before_action :set_pokemons

  def index
    @captured_pokemons = CapturedPokemon.all
  end

end
end
