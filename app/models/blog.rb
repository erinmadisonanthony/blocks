class Blog < ActiveRecord::Base
  validates :title, presence: true
  validates :author, presence: true
  validates :content, presence: true
end
