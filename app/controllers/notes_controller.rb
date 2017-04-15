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
    @note.category = params[:category]
    @note.save
    redirect_to note_path(@note.id)
  end
  
  def destroy
    @note = Note.find(params[:id])
    @note.destroy
    redirect_to root_path
  end
  
  def hashtags
    tab = Tab.find_by(id: params[:id])
    @notes = tab.notes
  end
end
