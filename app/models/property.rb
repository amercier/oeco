class Property < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validates :order, presence: true, uniqueness: true
  has_and_belongs_to_many :project
end
