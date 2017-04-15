class TabNote < ActiveRecord::Base
    belongs_to :tab
    belongs_to :note
end
