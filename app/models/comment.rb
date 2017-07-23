class Comment < ActiveRecord::Base
  belongs_to :student
  belongs_to :blog
  validates :comment_content, presence: true
end
