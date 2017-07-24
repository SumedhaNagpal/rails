class RegistrationsController < Devise::RegistrationsController
	protected
	def after_sign_in_path_for(resource)
	student_home_feed_path
	end
	private

  def sign_up_params
    params.require(:student).permit(:first_name, :last_name, :enrollment_no, :branch, :year, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:student).permit(:first_name, :last_name, :enrollment_no, :branch, :year, :email, :password, :password_confirmation)
  end
end
