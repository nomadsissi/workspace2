module NotesHelper
    def render_with_hashtags(tab)
        link_to "#"<< tab.name ,"/notes/hashtag/#{tab.id}", { :class => "uk-button-primary" }
    end
end
