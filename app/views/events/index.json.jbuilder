json.array!(@events) do |event|
  json.extract! event, :name, :description, :event_date, :end_date, :duration, :external_links
  json.url event_url(event, format: :json)
end
