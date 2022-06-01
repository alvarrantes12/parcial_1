class PokemonService
    def save_pokemon
        response = HTTParty.get('https://pokeapi.co/api/v2/pokemon?limit=100000&offset=0')
        a = response[(0..1165).to_a.sample]
        Pokemon.create(name: a{'results'}['name'])
    end
end