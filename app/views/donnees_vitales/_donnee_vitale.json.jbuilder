json.extract! donnee_vitale, :id, :date, :valeur, :patient_id, :created_at, :updated_at
json.url donnee_vitale_url(donnee_vitale, format: :json)
