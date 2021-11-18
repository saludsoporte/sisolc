json.extract! reqnotum, :id, :requisicion_id, :user_id, :fecha, :comenta, :created_at, :updated_at
json.url reqnotum_url(reqnotum, format: :json)
