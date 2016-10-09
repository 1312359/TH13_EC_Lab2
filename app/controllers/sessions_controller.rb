class SessionsController < ApplicationController
	#skip_before_action :authorize
  def new
  end

  def create
  	user = User.find_by(name: params[:name])
  	if user and user.authenticate(params[:password])
  		session[:user_id] = user.id
  		 session[:user_name] = user.name
  		redirect_to user, alert: "User logged in!"
  	else
  		redirect_to login_url,alert:"invalid username or password!"
  end
end

  def destroy
  	sessions[:user_id]= nil
  	redirect_to login_url, alert:"successfully logged out!"
  end
end
