class Reqnotum < ApplicationRecord
  belongs_to :requisicion
  belongs_to :user
end
