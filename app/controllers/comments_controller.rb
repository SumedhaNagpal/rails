class CommentsController < ApplicationController

	

  def create
  	
  	@comment=Comment.new(:comment_content => params["comment_content"])
  	@blog= Blog.find(params[:id])
  	@comment.student_id=current_student.id
  	@comment.blog_id=@blog.id
  	#@comment=@blog.comments.create(params[:comment_content].permit(:comment_content))
  	#redirect_to blog_path(@blog)

  	respond_to do |format|
      if @comment.save
        format.html { redirect_to blog_path(@blog), notice: 'Comment was successfully posted.' }
        format.js { }
        format.json { render :show, status: :created, location: @blog }
      else
        format.html { redirect_to '/blogs/'+params[:id]}
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
  	@blog=Blog.find(params[:blog_id])
  	@comment=@blog.comments.find(params[:id])
  	@comment.destroy
    respond_to do |format|
      format.html { redirect_to blogs_path(@blog), notice: 'Comment was successfully destroyed.' }
      format.js{ }
      format.json { head :no_content }
    end

  end


  def show

  end
end
