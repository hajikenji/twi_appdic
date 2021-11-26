class TwiControllsController < ApplicationController
  def index
    @twiindex = Twimodel.all
  end
  def new
    @twinew = Twimodel.new
  end
  def create
    Twimodel.create(content: params[:twimodel][:content])
    redirect_to "/twi_controlls"
  end
end