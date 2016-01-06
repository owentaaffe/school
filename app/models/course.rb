class Course < ActiveRecord::Base
  validates :title, presence: true
  validates_unqueiness_of :title-
end
