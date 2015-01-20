class Project < ActiveRecord::Base
  validates :url, presence: true, uniqueness: true
  has_and_belongs_to_many :category
  has_and_belongs_to_many :property
end
