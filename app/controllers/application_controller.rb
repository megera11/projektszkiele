class ApplicationController < ActionController::Base
 helper_method :current_user

 private

 def current_user
   User.find_by id: session[:user_id] if session[:user_id]
 end

 def authorize
    flash[:wylog] = "Nie jesteś zalogowany."
    redirect_to home_path unless current_user
 end

end
