class Solicitud < ApplicationRecord
  has_many :articulos
	has_many :solnota
	belongs_to :user
	belongs_to :area
	belongs_to :tipo
	belongs_to :estado
	belongs_to :partida
	belongs_to :renglon
	belongs_to :requisicion
	belongs_to :proyecto
	belongs_to :fuente
	belongs_to :programa
end
