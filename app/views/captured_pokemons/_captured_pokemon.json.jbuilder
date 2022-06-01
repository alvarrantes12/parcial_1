json.extract! captured_pokemon, :id, :location, :created_at, :updated_at
json.url captured_pokemon_url(captured_pokemon, format: :json)
