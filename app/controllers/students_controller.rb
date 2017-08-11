class StudentsController < ApplicationController
  before_action :authenticate_user!
  before_action :get_student, only: [:show, :edit, :update, :destroy]

  def index
    @students = Student.all
  end

  def show
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(student_params)
  end

  def edit
  end

  def update
    @student.update(student_params)
    @student.save
    redirect_to student_path
  end

  def destroy
  end

  def get_student
    @student = Student.find(params[:id])
  end

  private
    def student_params
      params.require(:student).permit(:first_name, :last_name, :hero_name, :team_id, :superpower, :gender, :grade_level, :shirt_size)
    end

end
