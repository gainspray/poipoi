class Contribute < ApplicationRecord
#  belongs_to :user
  require 'carrierwave/orm/activerecord'
  mount_uploader :video, VideoUploader
  mount_uploader :image, ImageUploader
  validates :videoname,:video,:image,:videoclass,presence: true
end
