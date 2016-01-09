json.array!(@tutors) do |tutor|
  json.extract! tutor, :id, :first_name, :last_name, :email, :user_id
  json.url tutor_url(tutor, format: :json)
end
