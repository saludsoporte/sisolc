class Movimiento < ApplicationRecord
  belongs_to :almacen
  belongs_to :movimiento
  belongs_to :ped
  belongs_to :user
  belongs_to :tipo
  belongs_to :estado
  belongs_to :partida
end
