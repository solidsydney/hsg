json.array!(@gists) do |gist|
  json.extract! gist, :title, :body, :student_id
  json.url gist_url(gist, format: :json)
end
