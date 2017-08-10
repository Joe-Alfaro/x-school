class TeachersController < ApplicationController
  before_action :get_teacher, only: [:show, :edit, :update, :destroy]

  def index
    @teachers = Teacher.all
  end

  def show
  end

  def new
    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.new(teacher_params)
  end

  def edit
  end

  def update
    @teacher.update(teacher_params)
    @teacher.save
  end

  def destroy
  end

  def get_teacher
    @teacher = Teacher.find(params[:id])
  end

  private
    def teacher_params
      params.require(:teacher).permit(:first_name, :last_name, :hero_name, :superpower, :gender)
    end

end
