class Renglon < ApplicationRecord
  belongs_to :requisicion
  belongs_to :proyecto
  belongs_to :programa
  belongs_to :clues
  belongs_to :partida
  belongs_to :etiqueta
end
