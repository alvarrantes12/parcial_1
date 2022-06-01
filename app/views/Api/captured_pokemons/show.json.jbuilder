json.captured_pokemon do
    json.id @captured_pokemon.id
    json.name @captured_pokemon.name
    json.pokemon @captured_pokemon.pokemon.name 
    json.pokemon_trainer @captured_pokemon.pokemon_trainer.first_name
end