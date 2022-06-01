class PokemonService

    def save_pokemon
        response = HTTParty.get('https://pokeapi.co/api/v2/pokemon?limit=100000&offset=0')
        samp = response['results'].sample
        Pokemon.create(name: samp['name'])
    end
end