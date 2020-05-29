class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      @uzytkownik = Uzytkownik.create(user: @user)
      flash[:success] = "Registration successful."
      redirect_to home_path
    else
      flash[:error] = "Registration failed."
      redirect_to home_path
    end
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
