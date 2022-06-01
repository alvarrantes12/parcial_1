json.array! @captured_pokemons do |captured_pokemon|
  json.id captured_pokemon.id
  json.location captured_pokemon.location
  json.pokemon do
    json.name captured_pokemon.pokemon.name
  end
  json.pokemon_trainer do
    json.first_name captured_pokemon.pokemon_trainer.first_name
    json.last_name captured_pokemon.pokemon_trainer.last_name
  end
end
