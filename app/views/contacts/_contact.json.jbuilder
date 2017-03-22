json.extract! contact, :id, :valeur, :type_contact, :patient_id, :created_at, :updated_at
json.url contact_url(contact, format: :json)
