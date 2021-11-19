class Ped < ApplicationRecord
  belongs_to :clue
  belongs_to :proceso
  belongs_to :requisicion
  belongs_to :estado
  belongs_to :tipo
  belongs_to :partida
  belongs_to :prov
  belongs_to :almacen
  belongs_to :user

  has_many :movimientos
end
