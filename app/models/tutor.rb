class Tutor < ActiveRecord::Base
  has_many :classrooms
  has_many :courses, :through => :classroom
  has_many :students, :through => :classroom

  validates :last_name, presence: true, length: { minimum: 2, maximum: 50 }
  validates :first_name, presence: true, length: { minimum: 2, maximum: 50 }
end
