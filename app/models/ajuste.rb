class Ajuste < ApplicationRecord
  belongs_to :almacen
  belongs_to :partida
  belongs_to :fuente
  belongs_to :lote
  belongs_to :estado
  belongs_to :tipo
  belongs_to :catalogo
end
