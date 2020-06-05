class EatsController < ApplicationController
  def pokarm

  end

  def index
    @date = Date.today
    @lista = Eat.where(user_id: current_user)
    @date = params[:day]
    #end
  end

  def new

  end

  def create
    @eat = Eat.new(eat_params)
    @eat.user_id = current_user.id
    if @eat.save
      flash[:success_eat] = "Poprawnie dodano"
      redirect_to pokarm_path
    else
      flash[:failed_eat] = "Nie wypełniłeś wszystkich pól"
      redirect_to pokarm_path
    end
  end

  private
    def eat_params
      params.require(:eat).permit(:pokarmy_id, :user_id, :ilosc, :date, :day)
    end


end
