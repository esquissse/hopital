class Patient < ApplicationRecord

	has_many :contacts
	has_many :donnees_vitales
	has_many :sejours
	has_many :actes, through: :sejours
	
	accepts_nested_attributes_for :contacts, allow_destroy: true
	accepts_nested_attributes_for :donnees_vitales, allow_destroy: true

	before_create :creer_ipp

	def creer_ipp
		# IPP : Identifiant Permanent du Patient, c'est un numéro unique
		# dans cet exercice uniquement on crée un chiffre sur 8 caractères
		annee = Date.today.strftime('%Y')
		dernier_ipp = Patient.where("IPP like ?", "#{annee}%").max.try(:IPP)

		if dernier_ipp
			ipp = ( dernier_ipp.to_i + 1 ).to_s
		else
			ipp = "#{annee}0001"
		end

		self.IPP = ipp
	end

	def nom_complet
		prenom_usage + " " + nom_usage
	end
end
