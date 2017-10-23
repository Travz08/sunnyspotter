json.extract! location, :id, :address, :city, :postcode, :country, :user_id, :latitude, :longitude, :created_at, :updated_at
json.url location_url(location, format: :json)
