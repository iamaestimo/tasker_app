class ApplicationController < ActionController::Base
	before_action :devise_permitted_parameters, if: :devise_controller?

	protected

	def devise_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up) { |user| user.permit( :username, :email, :password, :password_confirmation) }
	end

	# redirect to a specific page after sign up
	def after_sign_in_path_for(resource)
	  root_path
	end
end
