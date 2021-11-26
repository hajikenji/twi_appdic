class TwiControllsController < ApplicationController
  before_action :set_model_twi, only: [:new]
  def index
    @twiindex = Twimodel.all
  end
  def new
  end
  def create
    Twimodel.create(content: params[:twimodel][:content])
    redirect_to "/twi_controlls"
  end
  private
  def set_model_twi
    @view_model_twis = Twimodel.new
  end
end