class Course < ActiveRecord::Base
  belongs_to :classroom

  validates :title, presence: true, length: { minimum: 10, maximum: 150 }
  

end

