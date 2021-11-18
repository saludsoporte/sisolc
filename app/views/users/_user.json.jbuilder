json.extract! user, :id, :titulo, :nombre, :puesto, :area_id, :rol_id, :estructura_id, :login, :email, :crypted_password, :salt, :remember_token, :remember_token_expires_at, :dato1, :dato2, :created_at, :updated_at
json.url user_url(user, format: :json)
