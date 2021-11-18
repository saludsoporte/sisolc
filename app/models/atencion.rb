class Atencion < ApplicationRecord
  belongs_to :clue
  belongs_to :paciente
  belongs_to :user
  belongs_to :tipo
end
