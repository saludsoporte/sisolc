class PoasAsigna < ApplicationRecord
  belongs_to :poas
  belongs_to :proceso
  belongs_to :clues
  belongs_to :almacen
  belongs_to :proveedor
  belongs_to :clave
  belongs_to :fuente
end
