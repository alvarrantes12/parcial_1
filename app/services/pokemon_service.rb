class PokemonService
    def save_pokemon
        response= HTTParty.get('https://pokeapi.co/api/v2/pokemon?limit=100000&offset=0')
        pokemon_list= response['results'][(0..1125).to_a.sample]
        Pokemon.create(
            name: pokemon_list['name']
        )
    end
end