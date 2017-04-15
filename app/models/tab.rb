class Tab < ActiveRecord::Base
  # throughオプションによりtab_notes経由でnotesにアクセスできるようになる
  # 具体的には、tab.notesで商品にアクセスができる
    has_many :tab_notes
    has_many :notes, through: :tab_notes
   
  # 名前による絞り込み
    scope :get_by_name, ->(name) {
    where("name like ?", "%#{name}%")
    }
end
