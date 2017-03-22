json.extract! patient, :id, :IPP, :nom_usage, :prenom_usage, :nom_naissance, :date_naissance, :commune_naissance, :pays_naissance, :created_at, :updated_at
json.url patient_url(patient, format: :json)
