json.array! @captured_pokemons do |captured_pokemon|
  json.id captured_pokemon.id
  json.location captured_pokemon.location
  json.pokemon_trainer_first_name captured_pokemon.pokemon_trainer.first_name
  json.pokemon_trainer_last_name captured_pokemon.pokemon_trainer.last_name
  json.pokemon_name captured_pokemon.pokemon.name
end