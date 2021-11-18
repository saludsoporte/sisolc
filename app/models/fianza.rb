class Fianza < ApplicationRecord
  belongs_to :user
  belongs_to :proceso
  belongs_to :prov
  belongs_to :estado
  belongs_to :tipo
  belongs_to :contrato
end
