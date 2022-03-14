class Catalogo < ApplicationRecord
	belongs_to :partida
	has_many :propuesta
	has_many :lotes
	has_many :reordens

	self.per_page = 10
end
