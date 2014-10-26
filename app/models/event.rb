class Event < ActiveRecord::Base

  validates :title, :content, :presence => true
  validates :title, :length => { :minimum => 1}
  validates :title, :uniqueness => true
end
