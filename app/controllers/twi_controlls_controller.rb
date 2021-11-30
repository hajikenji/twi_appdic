class TwiControllsController < ApplicationController
  before_action :set_model_twi, only: [:new]
  def index
    @twiindex = TwiControll.all
  end
  def new
  end
  def create
    TwiControll.create(content: params[:twi_controll][:content])
    redirect_to "/twi_controlls"
  end
  def confirm
    @view_model_twis = TwiControll.new
    @kkk = TwiControll.new(params[:twi_controll][:content])
    # binding.pry

  end
  private
  def set_model_twi
    @view_model_twis = TwiControll.new
  end
end