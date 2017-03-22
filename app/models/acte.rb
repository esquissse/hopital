class Acte < ApplicationRecord
	belongs_to :sejour
	belongs_to :patient
	belongs_to :docteur
	belongs_to :type_acte
end
