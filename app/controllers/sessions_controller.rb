class SessionsController < ApplicationController
  def create
    if params[:email].present? && params[:password].present?
      found_user = User.where(email: params[:email].strip.downcase).first
      if found_user
        authorized_user = found_user.authenticate(params[:password])
      end
    end
    if authorized_user
      session[:user_id] = authorized_user.id
      flash[:success1] = "Poprawnie sie zalogowales"
      redirect_to powitanie_path
    else
      flash[:error1] = "Niepoprawny login lub haslo"
      redirect_to home_path
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success2] = "Zostales wylogowany"
    redirect_to home_path
  end

end
