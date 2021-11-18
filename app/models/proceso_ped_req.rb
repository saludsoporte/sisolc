class ProcesoPedReq < ApplicationRecord
  belongs_to :proceso
  belongs_to :poas
  belongs_to :clave
  belongs_to :detpeds
end
