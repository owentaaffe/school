class Classroom < ActiveRecord::Base
  belongs_to :course
  belongs_to :tutor
  belongs_to :student
end
