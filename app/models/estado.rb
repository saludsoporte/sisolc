class Estado < ApplicationRecord
    has_many :solicituds
    has_many :peds
    has_many :movimientos
    has_many :lotes
    has_many :reordens
end
