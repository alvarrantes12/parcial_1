json.array! @captured_pokemons do |captured_pokemon|
    json.location captured_pokemon.location
    json.name captured_pokemon.pokemon.name
    json.trainer_first_name captured_pokemon.pokemon_trainer.first_name 
    json.trainer_last_name captured_pokemon.pokemon_trainer.last_name 
end
