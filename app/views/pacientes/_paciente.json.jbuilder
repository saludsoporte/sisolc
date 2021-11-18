json.extract! paciente, :id, :paterno, :materno, :nombre, :nacimiento, :curp, :observa, :cambio, :user_id, :created_at, :updated_at
json.url paciente_url(paciente, format: :json)
