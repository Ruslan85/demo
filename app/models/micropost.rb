class Micropost < ActiveRecord::Base
  attr_accessible :content, :user_id, :image, :remote_image_url

  belongs_to :user

  validates :content, :length => { :maximum => 140 }

  mount_uploader :image, ImageUploader
end
