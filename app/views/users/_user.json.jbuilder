json.extract! user, :id, :nombre, :apellido, :mail, :cantpuntaje, :contraseña, :facultad_id, :nivel_id, :created_at, :updated_at
json.url user_url(user, format: :json)
