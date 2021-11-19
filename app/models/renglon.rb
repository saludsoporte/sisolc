class Renglon < ApplicationRecord
  has_many :articulos
  has_many :solicituds
  belongs_to :requisicion
  belongs_to :clue
  belongs_to :partida
  belongs_to :programa
  belongs_to :proyecto
end
