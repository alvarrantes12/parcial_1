json.extract! captured_pokemon, :id, :location, :pokemon_trainer.first_name, :pokemon.name, :created_at, :updated_at
json.url captured_pokemon_url(captured_pokemon, format: :json)