json.extract! requisicion, :id, :fecha, :clues_id, :fuente_id, :user_id, :autoriza_id, :estado_id, :anexos, :etiqueta, :importe, :vobo_id, :created_at, :updated_at
json.url requisicion_url(requisicion, format: :json)
