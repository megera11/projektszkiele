class PokarmiesController < ApplicationController
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
  #  render plain: params[:pokarmy].inspect

    @pokarmy.save
    redirect_to @pokarmy
  end



end
