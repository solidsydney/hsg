json.array!(@assignments) do |assignment|
  json.extract! assignment, :subject, :question
  json.url assignment_url(assignment, format: :json)
end
