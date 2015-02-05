class ParentsController < ApplicationController
  before_action :check_logged_in

  def index
    @parents = Parent.all
    @grades = Grade.all
  end

  def new
    @parent = Parent.new
  end

  def edit
  end

  def create
  end

  def update
  end

  def show
  end

  private def check_logged_in
    redirect_to login_login_path unless session[:parent_id]
  end
end
