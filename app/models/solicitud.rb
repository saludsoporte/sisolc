class Solicitud < ApplicationRecord
  belongs_to :area
  belongs_to :user
  belongs_to :vobotecnico
  belongs_to :tipo
  belongs_to :partida
  belongs_to :requisicion
  belongs_to :renglon
  belongs_to :estado
  belongs_to :fuente
  belongs_to :programa
  belongs_to :proyecto
  belongs_to :adqui
end
