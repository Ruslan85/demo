class User < ActiveRecord::Base
  attr_accessible :email, :name

  has_many :microposts
  has_many :blog_posts

  def full_name
  	name
  end
end
