json.extract! acte, :id, :date_heure, :type_acte_id, :created_at, :updated_at
json.url acte_url(acte, format: :json)
