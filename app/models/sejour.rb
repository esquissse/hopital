class Sejour < ApplicationRecord
	belongs_to :patient
	belongs_to :service
	has_many :actes

	def facture_txt
		contenu = "Facture du #{Date.today.strftime("%Y-%m-%d")}\n"
		contenu += "Patient : #{patient.nom_complet}\n"
		contenu += "Date                           |  Acte                                             |  Réalisé par                     | Coût                   \n"
		contenu += "-------------------------------+---------------------------------------------------+----------------------------------+------------------------\n"
		

		File.open('db/facture.txt',"w+") { |f| f.write(contenu) }
	end

end
