class ApplicationController < ActionController::Base
	# before_action :authorize 
  #protect_from_forgery with: :exception
 
  #protected
def set_user
      @user = User.find(params[:id])
    end

def current_user
  return unless session[:user_id]
  @current_user ||= User.find(session[:user_id])
end
  def authorize
  	unless User.find_by(id:session[:user_id])
  		redirect_to login_url, notice:"what are you trying to do ?"
  	end
  end
end
