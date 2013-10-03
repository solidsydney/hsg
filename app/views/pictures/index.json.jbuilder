json.array!(@pictures) do |picture|
  json.extract! picture, :student_id
  json.url picture_url(picture, format: :json)
end
