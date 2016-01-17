json.array!(@classrooms) do |classroom|
  json.extract! classroom, :id, :course_id, :course_id, :tutor_id, :tutor_id, :tutor_last_name, :tutor_first_name, :student_id, :student_id, :student_last_name, :student_first_name
  json.url classroom_url(classroom, format: :json)
end
