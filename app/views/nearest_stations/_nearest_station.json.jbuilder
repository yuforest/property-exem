json.extract! nearest_station, :id, :line_name, :station_name, :walk_minute, :created_at, :updated_at
json.url nearest_station_url(nearest_station, format: :json)