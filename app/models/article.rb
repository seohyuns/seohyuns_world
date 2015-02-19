class Article < ActiveRecord::Base

	belongs_to :category

	validate_presence_of :title, :content

	scope :active, where('active = ?', true)
  	scope :alphabetical, order('title')
  	
end
