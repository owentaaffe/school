json.array!(@classrooms) do |classroom|
  json.extract! classroom, :id, :course_id, :tutor_id, :student_id
  json.url classroom_url(classroom, format: :json)
end
