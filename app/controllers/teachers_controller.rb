class TeachersController < ApplicationController
  protect_from_forgery with: :exception

  def home
    @students = Student.all
  end

  def index
    @teachers = Teacher.paginate(page: params[:page], per_page: 10)
    @teacher = Teacher.new
  end

  def new
    @teacher = Teacher.new
  end

  def create
    if Teacher.teacher_exists?(teacher_params[:name])
      flash.now[:alert] = "Teacher already exists."
      @teachers = Teacher.paginate(page: params[:page], per_page: 10) 
      render :index, status: :unprocessable_entity
    else
      @teacher = Teacher.new(teacher_params)
      if @teacher.save
        flash[:notice] = "Teacher successfully created!"
        redirect_to teachers_path
      else
        flash.now[:alert] = "Error creating teacher."
        @teachers = Teacher.paginate(page: params[:page], per_page: 10)
        render :index
      end
    end
  end

  def destroy
    @teacher = Teacher.find(params[:id])
    @teacher.destroy
    redirect_to teachers_path, notice: 'Student was successfully deleted.'
  end

  private

  def teacher_params
    params.require(:teacher).permit(:name, :password, :other_attributes)
  end
end
