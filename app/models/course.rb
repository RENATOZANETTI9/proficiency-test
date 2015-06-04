class Course < ActiveRecord::Base
	 #Validação do tamanho dos campos
	 validates_length_of :name, minimum: 5, maximum: 45, allow_blank: false
	 validates_length_of :description, minimum: 1, maximum: 45, allow_blank: false
	 
	 #Validação de campos únicos
	 validates_uniqueness_of :name
	 validates_uniqueness_of :description

	 #Foreign Key 
	 has_many :classroom, :dependent => :destroy

end
