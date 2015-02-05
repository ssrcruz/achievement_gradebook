class StudentsController < ApplicationController
  before_action :check_logged_in

  def index
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  private def check_logged_in
    redirect_to login_login_path unless session[:student_id]
  end
end
