class HomeController < ApplicationController
  def top
  end
  def r2
    @notes = Note.all
  end
  def r3
     @notes = Note.all
  end
end
