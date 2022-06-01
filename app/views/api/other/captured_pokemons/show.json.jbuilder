json.captured_pokemon do
    json.id @captured_pokemon.id
    json.location @captured_pokemon.location
    json.pokemon @captured_pokemon.pokemon.name
    json.first_name @captured_pokemon.pokemon_trainer.first_name
    json.last_name @captured_pokemon.pokemon_trainer.last_name
end

