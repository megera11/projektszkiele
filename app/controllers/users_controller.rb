class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if verify_recaptcha
      if @user.save 
        @uzytkownik = Uzytkownik.create(user: @user)
        flash[:success] = "Zarejestrowales sie pomyslnie"
        redirect_to home_path
      end
    else
      flash[:error] = "Rejestracja zakonczyla sie niepowodzeniem"
      redirect_to home_path
    end
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
