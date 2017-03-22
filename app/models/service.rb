class Service < ApplicationRecord
	has_many :sejours
	has_many :docteurs
end
