json.extract! mail_notum, :id, :nombre, :correo, :fecha, :id_nota, :fase, :created_at, :updated_at
json.url mail_notum_url(mail_notum, format: :json)
