class PokemonService
    def save_pokemon
        response = HTTParty.get('https://pokeapi.co/api/v2/pokemon?limit=100000&offset=0')
        pokemon_arr = response['results']
        pokemon_obj = pokemon_arr[(0..1000).to_a.sample]
        Pokemon.create(name: pokemon_obj['name'])
    end
end