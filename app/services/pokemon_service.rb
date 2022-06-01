class PokemonService

    def save_pokemon

        response = HTTParty.get('https://pokeapi.co/api/v2/pokemon?limit=100000&offset=0')
        Pokemon.create(name: response[(0..60).to_a.sample]['name'])

    end


end
