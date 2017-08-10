class TeamsController < ApplicationController
  before_action :get_teams, only: [:show, :edit, :update, :destroy]

  def index
    @teams = Team.all
  end

  def show
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.create(teacher_params)
  end

  def edit
  end

  def update
    @team.update(teacher_params)
    @team.save
  end

  def destroy
  end

  def get_teams
    @team = Team.find(params[:id])
  end

  private
    def team_params
      params.require(:team).permit(:name, :teacher_id)
    end

end
