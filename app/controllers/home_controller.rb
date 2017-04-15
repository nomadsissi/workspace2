class HomeController < ApplicationController
  def top
    @notes = Note.all
    @tabs = Tab.all
  end
  def r2
    @notes = Note.all
  end
  def r3
     @notes = Note.all
  end
end
