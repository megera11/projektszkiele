class EatsController < ApplicationController
    def pokarm
  
    end

    def index
        @lista = Eat.where(user_id: current_user)
        #@day = params[:date][:day]
        #@month = params[:date][:month]
        #@year = params[:date][:year]
        #@date = Date.new(params[:date][:year], params[:date][:month], params[:date][:day])
        if params[:date] == nil
          @date=Date.today
        else
          @date=Date.civil(params[:date][:year].to_i, params[:date][:month].to_i, params[:date][:day].to_i)
        end
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
        params.require(:eat).permit(:pokarmy_id, :user_id, :ilosc, :created_at, :data)
      end
  
  
end


  