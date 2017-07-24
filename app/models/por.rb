class Por < ActiveRecord::Base
  belongs_to :student
  validates :por_content, presence: true
  validates :por_title, presence: true
end
