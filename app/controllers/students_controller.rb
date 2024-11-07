class StudentsController < ApplicationController
  def index
    @students = Student.paginate(page: params[:page], per_page: 10)
    @student = Student.new
  end

  def new
    @student = Student.new
  end

  def create
    # Check if a student with the same name already exists
    if Student.exists?(name: student_params[:name])
      flash.now[:alert] = "Student with this name already exists."
      @students = Student.paginate(page: params[:page], per_page: 10)
      render :index, status: :unprocessable_entity
    else
      @student = Student.new(student_params)
      if @student.save
        redirect_to students_path, notice: 'Student created successfully.'
      else
        flash.now[:alert] = "Error creating student."
        @students = Student.paginate(page: params[:page], per_page: 10)
        render :index
      end
    end
  end
  
  
  def credwate
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

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    if @student.update(student_params)
      redirect_to students_path, notice: 'Student details updated successfully.'
    else
      render :edit
    end
  end

  def show
    @student = Student.find(params[:id])
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    redirect_to students_path, notice: 'Student was successfully deleted.'
  end

  private

  def student_params
    params.require(:student).permit(:name, :subject_name, :marks)
  end
end
