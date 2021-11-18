class Detped < ApplicationRecord
  belongs_to :ped
  belongs_to :clave
  belongs_to :estado
  belongs_to :requisicion
  belongs_to :renglon
end
