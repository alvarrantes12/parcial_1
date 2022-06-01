class PokemonService
  def save_pokemon
    third_party_api_response = HTTParty.get("https://pokeapi.co/api/v2/pokemon?limit=100000&offset=0")
    results = third_party_api_response["results"]
    random_pokemon = results[(0..results.length).to_a.sample]
    Pokemon.create(name: random_pokemon["name"])
  end
end
