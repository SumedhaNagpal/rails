class StudentHomeController < ApplicationController
  before_action :authenticate_student!
  layout "studentHome"
  def feed
    @blogs = Blog.all.order('created_at DESC')
  end
  

  def profile
  end

  def notification
  end

  def write_blog
  end

  def my_blogs
  end

  def add_skill
    @skill=Skill.new
  end

  def add_experience
  end

  def add_por
  end 
end
