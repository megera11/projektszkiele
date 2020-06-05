class UserMailer < ApplicationMailer
    def new_user_email
        @user = params[:user]
    
        mail(to: "przemek_29@op.pl", subject: "You got a new order!")
    end
end

