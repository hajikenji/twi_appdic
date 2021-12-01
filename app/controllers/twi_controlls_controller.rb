class TwiControllsController < ApplicationController
  before_action :set_model_twi, only: [:new]

  def index
    @twiindex = TwiControll.all
  end
  
  def new
  end

  def create
    if params[:back]
      @view_model_twis = TwiControll.new(content: params[:twi_controll][:content])
      render :new
    elsif
      TwiControll.create(content: params[:twi_controll][:content])
      redirect_to "/twi_controlls"
    else
    end
  end

  def confirm
    @view_model_twis = TwiControll.new(content: params[:twi_controll][:content])
  end

  def edit
    @twiupdate = TwiControll.find(params[:id])
  end

  def update
    @twiupdate = TwiControll.find(params[:id])
    if @twiupdate.update(content: params[:twi_controll][:content])
      redirect_to "/twi_controlls", notice: "Tweetを編集しました！"
    else
      render :edit
    end
  end

  private
  def set_model_twi
    @view_model_twis = TwiControll.new
  end

end