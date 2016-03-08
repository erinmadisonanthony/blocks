class Resource < ActiveRecord::Base
  validates :name, presence: true
  validates :website_url, presence: true
  validates :description, :presence: true
end
