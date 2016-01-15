class Classroom < ActiveRecord::Base
  has_many :tutors
  has_many :students
  has_many :courses

end
