class Proceso < ApplicationRecord
  has_many :peds
  has_many :propuestas
end
