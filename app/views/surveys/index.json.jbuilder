json.array!(@surveys) do |survey|
  json.extract! survey, :id, :Q1, :Q2, :Q3, :Q4, :Q5, :Q6, :Q
  json.url survey_url(survey, format: :json)
end
