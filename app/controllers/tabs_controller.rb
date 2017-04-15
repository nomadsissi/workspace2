class TabsController < ApplicationController
  def search
    @tabs = Tab.all
    if params[:name].present?
        @tabs = @tabs.get_by_name params[:name]
    #     yield(:sidebar)
    #     # @tabs.each do |tab|
    #     #   redirect_to hashtag_path(tab.id)
    #     # end
    end
    # @tab = Tab.find_by(name: params[:name])
    # redirect_to hashtag_path(@tab.id)

  end
end