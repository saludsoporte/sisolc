json.extract! solicitud, :id, :area_id, :user_id, :vobotecnico_id, :tipo_id, :partida_id, :requisicion_id, :renglon_id, :notas, :anexos, :recepcion, :estado_id, :fuente_id, :programa_id, :proyecto_id, :importe, :adqui_id, :techo, :tipotecho, :created_at, :updated_at
json.url solicitud_url(solicitud, format: :json)
