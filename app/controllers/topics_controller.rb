class TopicsController < ApplicationController
  before_action :set_topic, only: %i[ show edit update destroy ]

  def index
    @topics = Topic.all.includes(:favorite_users)
  end

  def new
    @topic = Topic.new
  end

  def show
  end

  def edit
  end

  def create
    @topic = current_user.topics.new(topic_params)
    # binding.pry
    if @topic.save
      redirect_to topics_path, success: '投稿に成功しました'
    else
      flash.now[:danger] = "投稿に失敗しました"
      render :new
    end
  end

  def update
    if @topic.update(topic_params)
      redirect_to topics_path, success: '編集に成功しました'
    else
      render :edit
    end 
  end

  def destroy
    @topic.destroy
    respond_to do |format|
      format.html { redirect_to topic_url, notice: "topic was successfully destroyed." }
      format.json { head :no_content }
    end
  end


  private
  def set_topic
    @topic = Topic.find(params[:id])
  end

  def topic_params
    params.require(:topic).permit(:user_id, :title, :image, :description, :tag)
  end

end
