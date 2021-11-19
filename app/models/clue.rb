class Clue < ApplicationRecord

  has_many :requisicions
  has_many :solicituds
  has_many :renglons
  has_many :articulos
  has_many :peds
  has_many :almacens
# Para traernos varios datos
  def name
          nomunidad + " - " + String(clues)
  end

end
