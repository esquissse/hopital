class Docteur < ApplicationRecord
	has_many :services
	has_many :actes
end
