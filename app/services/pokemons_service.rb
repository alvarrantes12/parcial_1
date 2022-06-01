class PokemonsService

    def save_pokemon
        response = HTTParty.get('https://pokeapi.co/api/v2/pokemon?limit=100000&offset=0')
        var = response['results'][(0..1125).to_a.sample]
        Pokemon.create(name: var['name'])
    end
end