class Requisicion < ApplicationRecord
  has_many :articulos
  has_many :renglons
  has_many :reqnota
  has_many :peds
  belongs_to :clue
  belongs_to :fuente
end
