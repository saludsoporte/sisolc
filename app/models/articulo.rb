class Articulo < ApplicationRecord
  belongs_to :solicitud
  belongs_to :requisicion
  belongs_to :renglon
  belongs_to :clue
  belongs_to :partida

validates :partida, presence: true

  def importe
          if cantidad != nil && precio != nil
                  cantidad * precio
          else
          0
          end
  end
end
