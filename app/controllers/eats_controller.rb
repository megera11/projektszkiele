class EatsController < ApplicationController
  def pokarm

  end

  def get_dates
    @data=Date.civil(params[:start_date][:year].to_i, params[:start_date][:month].to_i, params[:start_date][:day].to_i)
  end

  def index
    @lista = Eat.where(user_id: current_user)
  #  @data=Date.civil(params[:start_date][:year].to_i, params[:start_date][:month].to_i, params[:start_date][:day].to_i)
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
      params.require(:eat).permit(:pokarmy_id, :user_id, :ilosc)
    end


end
