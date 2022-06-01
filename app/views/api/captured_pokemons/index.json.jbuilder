json.array! @captured_pokemons do |captured_pokemon|
    json.location captured_pokemon.location
    json.first_name_trainer captured_pokemon.pokemon_trainer.first_name
    json.last_name_trainer captured_pokemon.pokemon_trainer.last_name
    json.name_pokemon captured_pokemon.pokemon.name
end