class Contabilidad < ApplicationRecord
  belongs_to :sistema
  belongs_to :fuente
  belongs_to :partida
  belongs_to :almacen
  belongs_to :prov
  belongs_to :tipo
  belongs_to :user
  belongs_to :programa
  belongs_to :proyecto
end
