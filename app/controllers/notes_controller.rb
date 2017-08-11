class NotesController < ApplicationController
  before_action :get_note, only: [:show, :edit, :update, :destroy]

  def index
    @notes = Note.all
  end

  def show
  end

  def new
    if params[:student_id]
      @recipient = Student.find(params[:student_id])
      @route = student_notes_path
      @sender = Teacher.all.sample
    else
      @recipient = Teacher.find(params[:teacher_id])
      @route = teacher_notes_path
      @sender = Student.all.sample
    end
    @note = Note.new
  end

  def create
    @note = Note.create(note_params)
    redirect_to '/'
  end

  def edit
  end

  def update
    @note.update(note_params)
    @note.save
  end

  def destroy
  end

  def get_note
    @note = Note.find(params[:id])
  end

  private
    def note_params
      params.require(:note).permit(:content, :noteable_id, :sender_id, :noteable_type, :sender_type)
    end

end
