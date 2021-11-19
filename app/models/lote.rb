class Lote < ApplicationRecord
  belongs_to :partida
  belongs_to :almacen
  belongs_to :movimiento
  belongs_to :fuente
  belongs_to :estado
  belongs_to :catalogo
end
