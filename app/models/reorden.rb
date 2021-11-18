class Reorden < ApplicationRecord
  belongs_to :partida
  belongs_to :catalogo
  belongs_to :tipo
  belongs_to :almacen
  belongs_to :user
  belongs_to :notifica
  belongs_to :estado
end
