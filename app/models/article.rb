class Article < ActiveRecord::Base
  has_many :comments, :dependent => :destroy
  attr_accessible :title, :body

  validates_presence_of :title, :body
end
