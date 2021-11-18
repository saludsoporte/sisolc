class Lote < ApplicationRecord
  belongs_to :catalogo
  belongs_to :ped
  belongs_to :almacen
  belongs_to :fuente
  belongs_to :estado
  belongs_to :movimiento
  belongs_to :requisicion
  belongs_to :programa
  belongs_to :proyecto
  belongs_to :partida
  belongs_to :etiqueta
  belongs_to :detped
  belongs_to :lote
  belongs_to :renglon
  belongs_to :salida
  belongs_to :prov
  belongs_to :cartacom
end
