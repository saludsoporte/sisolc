class Propuestum < ApplicationRecord
  belongs_to :proceso
	belongs_to :partida
	belongs_to :catalogo
end
