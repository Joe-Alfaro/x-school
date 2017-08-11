class TeamsController < ApplicationController
  before_action :authenticate_user!
  before_action :get_teams, only: [:show, :edit, :update, :destroy]

  def index
    @teams = Team.all
  end

  def show
    @rules = Rule.all
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.new(teacher_params)
  end

  def edit
  end

  def update
    @team = Team.update(teacher_params)
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
