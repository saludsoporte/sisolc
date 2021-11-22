class Almacen < ApplicationRecord
  belongs_to :clue
	belongs_to :user
	has_many :movimientos
	has_many :lotes
	has_many :reordens
	has_many :peds

	self.per_page= 10
end
