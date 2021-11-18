class Catalogo < ApplicationRecord
  belongs_to :partida
  belongs_to :estado
  belongs_to :tipo
  belongs_to :grupo
  belongs_to :programa
  belongs_to :prog0
  belongs_to :prog1
  belongs_to :prog2
  belongs_to :prog3
  belongs_to :prog4
  belongs_to :prog5
  belongs_to :prog6
  belongs_to :prog7
  belongs_to :prog8
  belongs_to :prog9
  belongs_to :casuses_basico
end
