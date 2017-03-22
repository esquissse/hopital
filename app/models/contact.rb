class Contact < ApplicationRecord
	belongs_to :patient, required: false

	enum type_contact: ["Parent", "Père", "Mère", "Frère", "Soeur", "Conjoint(e)", "Amis"]
end
