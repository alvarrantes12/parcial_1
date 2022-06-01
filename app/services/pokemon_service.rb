class PokemonService
    def save_pokemon
        response = HTTParty.get('https://pokeapi.co/api/v2/pokemon?limit=100000&offset=0')
        get_attributes = response['results'][(0..1126).to_a.sample]
        Pokemon.create(name: get_attributes['name'])
    end
end