class TwiControllsController < ApplicationController
  def index
  end
  def new
    # @twi_controlls = Twi_controll.new
  end
  def create
    Twimodel.create(params[:contents])
    redirect_to "/twi_controlls"
  end
end