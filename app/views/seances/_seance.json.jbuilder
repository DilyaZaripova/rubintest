json.extract! seance, :id, :hall_id, :movie_id, :datetime, :price, :created_at, :updated_at
json.url seance_url(seance, format: :json)