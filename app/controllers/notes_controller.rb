class NotesController < ApplicationController
  before_action :get_note, only: [:show, :edit, :update, :destroy]

  def index
    @notes = Note.all
  end

  def show
  end

  def new
    @note = Note.new
  end

  def create
    @note = Note.new(teacher_params)
  end

  def edit
  end

  def update
    @note.update(note_params)
    @note.save
  end

  def destroy
  end

  def get_teams
    @note = Note.find(params[:id])
  end

  private
    def team_params
      params.require(:note).permit(:content, :noteable_id, :sender_id, :noteable_type, :sender_type)
    end

end
