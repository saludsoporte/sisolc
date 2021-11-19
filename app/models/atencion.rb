class Atencion < ApplicationRecord
	belongs_to :paciente
	belongs_to :user
end
