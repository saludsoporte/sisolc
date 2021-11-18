class Propuestum < ApplicationRecord
  belongs_to :proceso
  belongs_to :reng
  belongs_to :partida
  belongs_to :catalogo
  belongs_to :provee
end
