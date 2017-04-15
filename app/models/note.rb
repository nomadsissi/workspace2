class Note < ActiveRecord::Base
  # throughオプションによりtab_notes経由でtabsにアクセスできるようになる
  # 具体的には、note.tabsでカテゴリにアクセスができる
    has_many :tab_notes
    has_many :tabs, through: :tab_notes
  
    after_create do
        note = Note.find_by(id: self.id)
        hashtags = self.category.split(" ")
        hashtags.uniq.map do |hashtag|
            tab = Tab.find_or_create_by(name: hashtag.delete('#'))
            note.tabs << tab
        end    
    end  

    before_update do
        note = Note.find_by(id: self.id)
        note.tabs.clear
        hashtags = self.category.split(" ")
        hashtags.uniq.map do |hashtag|
            tab = Tab.find_or_create_by(name: hashtag.delete('#'))
            note.tabs << tab
        end    
    end  
end
