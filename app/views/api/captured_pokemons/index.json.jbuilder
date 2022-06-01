json.array! @captured_pokemons do |captured_pokemon|
    json.location captured_pokemon.location
    json.pokemon_trainer "#{captured_pokemon.pokemon_trainer.first_name} #{captured_pokemon.pokemon_trainer.last_name}"
    json.pokemon captured_pokemon.pokemon.name
end