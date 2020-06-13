json.extract! appointment, :id, :start_from, :end_at, :doctor_id, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
