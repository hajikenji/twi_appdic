class PostsController < ApplicationController
  before_action :set_model_twi, only: [:new]

  def top
  end

  def index
    @twiindex = Post.all
  end
  
  def new
  end

  def create
    @view_model_twis = Post.new(post_strong_params)
    if params[:back]
      @view_model_twis = Post.new(post_strong_params)
      render :new
    elsif @view_model_twis.save
      redirect_to "/posts"
    else
      render :new
    end
  end

  def confirm
    @view_model_twis = Post.new(post_strong_params)
  end

  def edit
    @twiupdate = Post.find(params[:id])
  end

  def update
    @twiupdate = Post.find(params[:id])
    if @twiupdate.update(post_strong_params)
      redirect_to "/posts", notice: "Tweetを編集しました！"
    else
      render :edit
    end
  end

  def destroy
    @twiupdate = Post.find(params[:id])
    @twiupdate.destroy
    redirect_to "/posts", notice: "Tweetを削除しました！"
  end

  private
  def set_model_twi
    @view_model_twis = Post.new
  end

  def post_strong_params
    params.require(:post).permit(:content)
  end
end