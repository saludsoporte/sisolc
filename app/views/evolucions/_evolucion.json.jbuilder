json.extract! evolucion, :id, :paciente_id, :atencion_id, :fecha, :diagnosticos, :ta, :fr, :fc, :temp, :condiciones, :pendientes, :pronostico, :user_id, :tipo_id, :fechaeg, :created_at, :updated_at
json.url evolucion_url(evolucion, format: :json)
