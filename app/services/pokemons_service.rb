class PokemonsService
  def save_Pokemons
    pokemons = HTTParty.get('https://pokeapi.co/api/v2/pokemon?limit=100000&offset=0') 
    Pokemon.create(name: pokemons['results'].sample['name'])
  end
end
