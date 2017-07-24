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

  def new_skills      
  end

  def add_skill
    @skill=Skill.new
    @skill.skill_content=params[:skill_content]
    @skill.student_id = current_student.id
    respond_to do |format|
      if @skill.save
        format.html { redirect_to '/student_home/profile/'+current_student.id.to_s, notice: 'Skill was successfully posted.' }
        format.js { }
        format.json { render :show, status: :created, location: @skill }
      else
        format.html { redirect_to '/student_home/profile'+current_student.id.to_s }
        format.json { render json: @skill.errors, status: :unprocessable_entity }
      end
    end
  end

  def new_experience     
  end
  def add_experience
    @experience=Experience.new
    @experience.exp_content=params[:exp_content]
    @experience.exp_title=params[:exp_title]
    @experience.student_id = current_student.id

    respond_to do |format|
      if @experience.save
        format.html { redirect_to '/student_home/profile/'+current_student.id.to_s , notice: 'Experience was successfully posted.' }
        format.js { }
        format.json { render :show, status: :created, location: @experience}
      else
        format.html { redirect_to '/student_home/profile/'+current_student.id.to_s }
        format.json { render json: @experience.errors, status: :unprocessable_entity }
      end
    end
  end

  def new_por      
  end
  def add_por
    @por=Por.new
    @por.por_content=params[:por_content]
    @por.por_title=params[:por_title]
    @por.student_id = current_student.id
    respond_to do |format|
      if @por.save
        format.html { redirect_to '/student_home/profile/'+current_student.id.to_s, notice: 'Position of responsibility was successfully posted.' }
        format.js { }
        format.json { render :show, status: :created, location: @por }
      else
        format.html { redirect_to '/student_home/profile/'+current_student.id.to_s}
        format.json { render json: @por.errors, status: :unprocessable_entity }
      end
    end
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
