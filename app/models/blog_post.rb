class BlogPost < ActiveRecord::Base
  attr_accessible :content, :title, :user_id, :user

  validates :content, :title, :user_id, presence: true

  belongs_to :user
end
