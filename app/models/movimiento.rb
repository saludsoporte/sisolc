class Movimiento < ApplicationRecord
	belongs_to :almacen
	belongs_to :tipo
	belongs_to :estado
	belongs_to :ped
	belongs_to :partida	
	has_many :lotes
	self.per_page=10
end
