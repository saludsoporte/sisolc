class Reporte < ApplicationRecord
  validates :reporte, presence: true
    validates :desde, presence: false
    validates :hasta, presence: false
    validates :cpini, presence: false
    validates :cpfin, presence: false
    validates :usuario, presence:false
    validates :texto, presence: false
    validates :rango1, presence: false
    validates :rango2, presence: false
end
