class SessionsController < ApplicationController
  def new
    @teacher = Teacher.new
  end

  def create
    teacher = Teacher.find_by(teacher_id: params[:teacher_id])
    if teacher&.authenticate(params[:password])
      session[:teacher_id] = teacher.id
      redirect_to students_path, notice: "Successfully logged in!"
    else
      flash.now[:alert] = "Invalid Teacher ID or Password"
      render :new 
    end
  end
   

  def destroy
    session[:teacher_id] = nil 
    redirect_to root_path, notice: "Successfully logged out!"
  end
end
