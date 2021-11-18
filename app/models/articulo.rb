class Articulo < ApplicationRecord
  belongs_to :solicitud
  belongs_to :clues
  belongs_to :partida
  belongs_to :clave
  belongs_to :almacen
  belongs_to :requisicion
  belongs_to :renglon
  belongs_to :user
  belongs_to :proceso
  belongs_to :ped
  belongs_to :catalogo
end
