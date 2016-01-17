class Course < ActiveRecord::Base
  has_many :classrooms
  has_many :tutors, :through => :classroom 
  has_many :students, :through => :classroom

  validates :title, presence: true, length: { minimum: 10, maximum: 150 }
  
end

