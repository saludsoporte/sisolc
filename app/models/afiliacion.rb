class Afiliacion < ApplicationRecord
  belongs_to :paciente
  belongs_to :institu
  belongs_to :user
end
