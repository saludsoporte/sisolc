class Reorden < ApplicationRecord
  belongs_to :almacen
	belongs_to :partida
	belongs_to :user
	belongs_to :estado 
	belongs_to :tipo	 
	belongs_to :catalogo
	
	validates :user_id, presence: true
	validates :nombre, presence:true	
	validates :partida_id, presence:true
	validates :punto, presence: true
	validates :tipo_id, presence:true
	validates :almacen_id, presence:true
	validates :vigenciai, presence: true
	validates :vigenciaf, presence: true
	validates :catalogo_id, presence:true
end
