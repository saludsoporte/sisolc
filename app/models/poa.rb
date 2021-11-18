class Poa < ApplicationRecord
  belongs_to :fuente
  belongs_to :accion
  belongs_to :clave
  belongs_to :clues
end
