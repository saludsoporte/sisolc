class Nacido < ApplicationRecord
  belongs_to :paciente
  belongs_to :atencion
  belongs_to :user
end
