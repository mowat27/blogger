class Article < ActiveRecord::Base
  has_many :comments, :dependent => :destroy
  has_many :taggings, :dependent => :destroy
  has_many :tags,     :through => :taggings, :order => :name

  attr_accessible :title, :body, :tag_list

  validates_presence_of :title, :body

  def tag_list
    tags.join(", ")
  end

  def tag_list=(str)
    tag_names = str.split(/ *, */).map(&:downcase).uniq
    self.tags = tag_names.map { |tag_name| Tag.find_or_create_by_name(tag_name) }
    self.tags
  end
end
