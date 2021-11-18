class Temp13 < ApplicationRecord
  belongs_to :ped
  belongs_to :detped
  belongs_to :partida
  belongs_to :catalogo
  belongs_to :prov
  belongs_to :proceso
  belongs_to :fuente
  belongs_to :clue
  belongs_to :almacen
  belongs_to :programa
  belongs_to :requisicion
  belongs_to :renglon
  belongs_to :cp
end
