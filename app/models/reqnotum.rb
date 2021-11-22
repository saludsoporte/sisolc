class Reqnotum < ApplicationRecord
  belongs_to :requisicion
  self.per_page = 10
end
