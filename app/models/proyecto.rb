class Proyecto < ApplicationRecord
    has_many :renglons
    has_many :solicituds
# Para traernos un dato compuesto
    def name
            String(clave) + " " + proyecto
    end

end
