class TeachersController < ApplicationController
  before_action :check_logged_in

  def index
    @teachers = Teacher.all
  end

  def new
    @teacher = Teacher.new
  end

  def edit
  end

  def create
  end

  def update
  end

  def show
  end

  def destroy
  end

  private def check_logged_in
    redirect_to login_login_path unless session[:teacher_id]
  end
end
