class UzytkowniksController < ApplicationController
  before_action :authorize
  def edycja

  end

  def new
    @uzytkownik = Uzytkownik.new
  end

  def create
    @uzytkownik = Uzytkownik.new(uzytkownik_params)
    @uzytkownik.save
  end
  private
    def uzytkownik_params
      params.require(:uzytkownik).permit(:wzrost, :waga, :kcaldospoz)
    end
end
