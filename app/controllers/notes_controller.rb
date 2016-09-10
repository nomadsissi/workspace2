class NotesController < ApplicationController
  def new
  end
  def create
   @note = Note.new
   @note.title = params[:title]
   @note.content = params[:content]
   @note.category = params[:category]
   @note.save
   redirect_to note_path(@note.id)
  end
  def show
    @note = Note.find(params[:id])
  end
  def edit
    @note = Note.find(params[:id])
  end
  def update
    @note = Note.find(params[:id])
    @note.title = params[:title]
    @note.content = params[:content]
    @note.save
    redirect_to note_path(@note.id)
  end
  def destroy
    @note = Note.find(params[:id])
    @note.destroy
    if @note.category == "3" then
      redirect_to r3_path
    else
      redirect_to r2_path
    end
  end
end
