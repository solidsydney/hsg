json.array!(@quizzes) do |quiz|
  json.extract! quiz, :question, :option_a, :option_b, :option_c, :option_d, :answer
  json.url quiz_url(quiz, format: :json)
end
