class StudentsController < ApplicationController
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
    @student = Student.new(student_params)
  end

  def edit
  end

  def update
    @student = Student.update(student_params)
  end

  def destroy
  end

  def get_student
    @student = Student.find(params[:id])
  end

  private
    def student_params
      params.require(:student).permit(:first_name, :last_name, :hero_name, :superpower, :gender, :grade_level, :shirt_size, :email, :password)
    end

end
