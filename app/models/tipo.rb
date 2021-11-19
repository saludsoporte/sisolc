class Tipo < ApplicationRecord
    has_many :solicituds
    has_many :movimientos
    has_many :peds
    has_many :reordens
end
