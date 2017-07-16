class Student < ActiveRecord::Base
	has_many :blogs
	has_many :skills 
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

   validates :first_name, presence: true
 	validates :last_name, presence: true
 	validates :enrollment_no, presence: true, length: { in: 10..11 }
 	validates :branch, presence: true, length: { in: 2..3}
 	validates :year, presence: true,  length: {in: 5..6}
end
