class Temp18 < ApplicationRecord
  belongs_to :clues
  belongs_to :proceso
  belongs_to :proveedor
  belongs_to :condiciones
  belongs_to :almacen
  belongs_to :requisicion
  belongs_to :programa
  belongs_to :user
  belongs_to :jda
  belongs_to :so
  belongs_to :cp
  belongs_to :da
  belongs_to :dg
  belongs_to :adq
  belongs_to :estado
  belongs_to :renglon
  belongs_to :tipo
  belongs_to :partida
  belongs_to :fuente
  belongs_to :fianza
end
