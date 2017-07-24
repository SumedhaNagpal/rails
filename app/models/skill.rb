class Skill < ActiveRecord::Base
  belongs_to :student
  validates :skill_content, presence: true
end
