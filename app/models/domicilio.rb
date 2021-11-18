class Domicilio < ApplicationRecord
  belongs_to :paciente
  belongs_to :entidad
  belongs_to :user
  belongs_to :muni
end
