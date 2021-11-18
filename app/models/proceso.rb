class Proceso < ApplicationRecord
  belongs_to :tipopro
  belongs_to :partida
  belongs_to :estado
  belongs_to :tipo
end
