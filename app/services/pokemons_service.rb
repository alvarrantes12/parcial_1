class PokemonsService

    def save_pokemon
        response = HTTParty.get('https://pokeapi.co/api/v2/pokemon?limit=100000&offset=0')
        pokemons_res = response[(0..171).to_a.sample]
        Pokemon.create(name: pokemons_res['name'])
    end

end