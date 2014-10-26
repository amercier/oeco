class News < ActiveRecord::Base
  validates :url, presence: true, uniqueness: true
  validates :order, presence: true, uniqueness: true
end
