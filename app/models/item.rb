class Item < ActiveRecord::Base
  
  belongs_to :user
  has_many :images
  belongs_to :category
  has_many :favorites
  
  validates_presence_of :title, :description, :price
  validates_numericality_of :price
end
