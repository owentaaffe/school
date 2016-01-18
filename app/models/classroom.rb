class Classroom < ActiveRecord::Base
  belongs_to :course
  belongs_to :tutor
  belongs_to :student

  def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%")
    else
      all
    end
  end
end

