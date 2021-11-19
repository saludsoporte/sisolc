class Programa < ApplicationRecord
    has_many :renglons
    has_many :solicituds
# Para traernos un dato compuesto
    def name
            programa+"-"+clave
    end

end
