class Catalogo < ApplicationRecord
	belongs_to :partida
	has_many :propuestas
	has_many :lotes
	has_many :reordens
end
