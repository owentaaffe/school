class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
      t.references :course, index: true, foreign_key: true
      t.integer :course_id
      t.references :tutor, index: true, foreign_key: true
      t.integer :tutor_id
      t.string :tutor_last_name
      t.string :tutor_first_name
      t.references :student, index: true, foreign_key: true
      t.integer :student_id
      t.string :student_last_name
      t.string :student_first_name

      t.timestamps null: false
    end
  end
end
