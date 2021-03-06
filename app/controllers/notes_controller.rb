class NotesController < ApplicationController
  def index
    @notes = Note.all
    render json: @notes
  end

  def new
    @note = Note.new
  end

  def create
    @note = Note.new(note_params)
    if @note.save
      render json: @note
    end
  end

  def show
    @note = Note.find(params[:id])
  end

  def destroy
    @note = Note.find(params[:id])
    if @note.destroy
      render json: @note
    end
  end

  private
  def note_params
    params.require(:note).permit(:title, :body, :id)
  end
end
