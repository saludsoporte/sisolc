class Temp9 < ApplicationRecord
  belongs_to :almacen
  belongs_to :fuente
  belongs_to :partida
  belongs_to :catalogo
  belongs_to :movimiento
  belongs_to :estado
end
