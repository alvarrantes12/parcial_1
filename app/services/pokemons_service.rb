class PokemonsService

    def save_pokemon
        response = HTTParty.get('https://pokeapi.co/api/v2/pokemon?limit=100000&offset=0')
        a = response['results'].sample
        Pokemon.create!(name: a['name'])
    end
end