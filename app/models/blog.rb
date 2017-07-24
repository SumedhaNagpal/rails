class Blog < ActiveRecord::Base
  belongs_to :student
  has_many :comments, dependent: :destroy


	def comment_feed blog_id
		comments = Comment.where(blog_id: blog_id).order(created_at: :DESC)
	end

end
