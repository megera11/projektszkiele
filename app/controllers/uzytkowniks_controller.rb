class UzytkowniksController < ApplicationController
  before_action :authorize

  def index
    @uzytkownik = Uzytkownik.find_by(user_id: current_user)
  end

  def show
      @uzytkownik = Uzytkownik.find_by(user_id: current_user)
  end

  def new
    @uzytkownik = Uzytkownik.new
  end

  def edit
    @uzytkownik = Uzytkownik.find_by(user_id: current_user)
  end

  def create
    @uzytkownik = Uzytkownik.new(uzytkownik_params)
    if @uzytkownik.save
      redirect_to @uzytkownik
    else
      render 'new'
    end
  end

  def update
    @uzytkownik =Uzytkownik.find_by(user_id: current_user)
    if @uzytkownik.update(uzytkownik_params)
      redirect_to edycja_path
    else
      render 'edit'
    end
  end

  private
    def uzytkownik_params
      params.require(:uzytkownik).permit(:wzrost, :waga, :kcaldospoz, :bmi, :rok_urodzenia, :plec)
    end
end
