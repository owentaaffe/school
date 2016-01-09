class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
      t.integer :course_id
      t.string :tutor_id
      t.string :student_id

      t.timestamps null: false
    end
  end
end
