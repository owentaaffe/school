class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :students
  has_many :tutors
  has_one  :admin
  validates :email, presence: true, length: { minimun: 10, maximum: 250}

end
