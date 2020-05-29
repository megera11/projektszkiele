class PokarmiesController < ApplicationController
  before_action :authorize
  def index
    @pokarmies = Pokarmy.all
  end

  def show
      @pokarmy = Pokarmy.find(params[:id])
  end

  def new
    @pokarmy = Pokarmy.new
  end

  def create
    @pokarmy = Pokarmy.new(params[:pokarmy].permit(:nazwa, :kalorie, :bialko, :weglowodany, :tluszcz))
    if @pokarmy.save
      flash[:success] = "Registration successful."
      redirect_to spispokarmow_path
    else
      flash[:error] = "Registration failed."
      render 'new'
    end



  end



end
