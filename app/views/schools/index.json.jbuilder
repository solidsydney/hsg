json.array!(@schools) do |school|
  json.extract! school, :name, :location, :address, :motto, :about
  json.url school_url(school, format: :json)
end
