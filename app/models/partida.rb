class Partida < ApplicationRecord
    has_many :articulos
    has_many :catalogos
    has_many :renglons
    has_many :solicituds
    has_many :propuesta
    has_many :movimientos
    has_many :reordens
    has_many :peds

    self.per_page = 10
    
    def partida_armonizada
            cog2011.to_s + " (" + partida.to_s+ ")"
    end
end
