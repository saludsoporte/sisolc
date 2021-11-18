class Temp20 < ApplicationRecord
  belongs_to :clues
  belongs_to :fuente
  belongs_to :user
  belongs_to :autoriza
  belongs_to :estado
  belongs_to :vobo
end
