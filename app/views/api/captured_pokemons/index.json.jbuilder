json.array! @captured_pokemons do |captured_pokemon|
    json.location captured_pokemon.location
    json.trainer  do 
        json.first_name captured_pokemon.pokemon_trainer.first_name
        json.last_name captured_pokemon.pokemon_trainer.first_name
    end
    json.pokemon  captured_pokemon.pokemon.name
end