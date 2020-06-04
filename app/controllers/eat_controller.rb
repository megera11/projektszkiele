class EatController < ApplicationController
  before_action :authorize
  def pokarm

  end

  def index
    @lista = Eat.find_by(user_id: current_user)
  end

  def new
    @eat = Eat.new
  end

  def create

  end

end
