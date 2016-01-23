class Bookstore < ActiveRecord::Base

  validates :title, presence: true, length: { minimum: 5, maximum: 150 }
end
