class Evolucion < ApplicationRecord
  belongs_to :paciente
	belongs_to :user
end
