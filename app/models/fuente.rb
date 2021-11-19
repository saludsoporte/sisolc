class Fuente < ApplicationRecord
    has_many :requisicions
    has_many :solicituds
    has_many :lotes
# Para traernos varios datos
    def name
            fuente + " - " + clave
    end


end
