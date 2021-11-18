class Evolucion < ApplicationRecord
  belongs_to :paciente
  belongs_to :atencion
  belongs_to :user
  belongs_to :tipo
end
