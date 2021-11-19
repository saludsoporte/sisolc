class Paciente < ApplicationRecord
  has_many :domicilios
	has_many :afiliacions
	has_many :atencions
	has_many :evolucions
	has_many :nacidos

# Para traernos el nombre completo
	def name 
		paterno + " " + materno + " " + nombre 
	end
end
