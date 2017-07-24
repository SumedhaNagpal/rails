class Experience < ActiveRecord::Base
  belongs_to :student
  validates :exp_title, presence: true
  validates :exp_content, presence: true
end
