class AchievementsController < ApplicationController
  before_action :check_logged_in
  before_action :set_achievement, only: [:show, :edit, :update, :destroy,]

  # def update_tags
  #   @achievement.tags = []
  #   params[:tags].keys.each do |tag_id|
  #     @achievement.tags << Tag.find_by_id(tag_id)
  #   end
  #   redirect_to edit_tags_achievement_path
  # end
  #
  # def edit_tags
  #   @achievements = Achievement.all
  # end

  def index
    @achievement = Achievement.all
  end

  def new
    @achievement = Achievement.new
  end

  def edit
  end

  def show
    redirect_to teachers_path
  end

  def create
    @achievement = achievement.new(achievement_params)
    respond_to do |format|
      if @achievement.save
        format.html { redirect_to @achievement, notice: 'achievement was successfully created.' }
        format.json { render :show, status: :created, location: @achievement }
      else
        format.html { render :new }
        format.json { render json: @achievement.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
  end

  private
  def check_logged_in
    redirect_to login_login_path unless session[:teacher_id]
  end

  private
  def achievement_params
    params.require(:achievement).permit(:name, :date, :point_value)
  end

  def destroy
    @achievement.destroy
    redirect_to teachers_path, notice: 'achievement was destroyed'
  end

  private
  def set_achievement
    @achievement = achievement.find(params[:id])
  end


end
