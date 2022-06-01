json.array! @captured_pokemons do |captured_pokemon|
  json.id captured_pokemon.id
  json.location captured_pokemon.location
  json.pokemonName captured_pokemon.pokemon.name
  json.pokemonTrainerFirstName captured_pokemon.pokemon_trainer.first_name
  json.pokemonTrainerLasttName captured_pokemon.pokemon_trainer.last_name
end