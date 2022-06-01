class PokemonService
    def save_pokemon
        response = HTTParty.get('https://pokeapi.co/api/v2/pokemon?limit=100000&offset=0')
        Pokemon.create(name: response['name'])
    end
end