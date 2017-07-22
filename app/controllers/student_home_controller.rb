class StudentHomeController < ApplicationController
  before_action :authenticate_student!
  layout "studentHome"
  def feed
    @blogs = Blog.all.order('created_at DESC')
  end
   def profilee
  end

  def upload_image
    uploaded_file = params[:image]
    filename = SecureRandom.hex + "." +uploaded_file.original_filename.split('.')[1]
    filepath = Dir.pwd + "/public/upload/" + filename
    File.open(filepath,'wb') do |file|
    file.write(uploaded_file.read())
    end
    current_student.profile_picture = filename
    current_student.save!
      return redirect_to '/profilee'
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
    @experience=Experience.new
  end

  def add_por
    @por=Por.new
  end 

  def show_skills
    @skills=Skill.where(:student_id => current_student.id)
  end

  def show_experiences
    @experiences=Experience.where(:student_id => current_student.id)
  end

  def show_pors
    @pors=Por.where(:student_id => current_student.id)
  end
end
