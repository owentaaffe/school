class Student < ActiveRecord::Base
  belongs_to :classroom
  
  validates :name, presence: true, length: { minimum: 2, maximum: 50 }
end
