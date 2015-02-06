class LoginController < ApplicationController
  def login
    if request.post?
      if params[:type] == "Teacher"
        teacher = Teacher.find_by_email(params[:email])
        if teacher && teacher.authenticate(params[:password]) #check to make sure that teacher != nil
          session[:teacher_id] = teacher.id
          flash[:notice] = "Welcome!" #flash persists after a redirect
          redirect_to teachers_path
        else
          flash.now[:notice] = "Please re-enter credentials" #flash.now does not hang out after a redirect
        end
      elsif params[:type] == "Student"
        student = Student.find_by_student_email(params[:email])
        if student && student.authenticate(params[:password]) #check to make sure that teacher != nil
          session[:student_id] = student.id
          flash[:notice] = "Welcome!" #flash persists after a redirect
          redirect_to students_path
        else
          flash.now[:notice] = "Please re-enter credentials" #flash.now does not hang out after a redirect
        end
      else
        parent = Parent.find_by_email(params[:email])
        if parent && parent.authenticate(params[:password]) #check to make sure that teacher != nil
          session[:parent_id] = parent.id
          flash[:notice] = "Welcome!" #flash persists after a redirect
          redirect_to parents_path
        else
          flash.now[:notice] = "Please re-enter credentials" #flash.now does not hang out after a redirect
        end

      end
    end
  end

  def logout
    session[:teacher_id] = nil
    session[:student_id] = nil
    session[:parent_id] = nil
    redirect_to login_login_path
  end
end
