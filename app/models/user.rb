class User < ApplicationRecord
  belongs_to :area
  belongs_to :rol
  belongs_to :estructura
end
