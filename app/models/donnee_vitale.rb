class DonneeVitale < ApplicationRecord
	belongs_to :patient, required: false
	belongs_to :type_donnee_vitale, required: false
end
