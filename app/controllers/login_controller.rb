class LoginController < ApplicationController
  def login
    if request.post?
      teacher = Teacher.find_by_email(params[:email])
      if teacher && teacher.authenticate(params[:password]) #check to make sure that teacher != nil
        session[:teacher_id] = teacher.id
        flash[:notice] = "Welcome!" #flash persists after a redirect
        redirect_to parents_path
      else
        flash.now[:notice] = "Please re-enter credentials" #flash.now does not hang out after a redirect
      end
    end
  end

  def logout
    session[:teacher_id] = nil
    redirect_to login_login_path
  end
end
