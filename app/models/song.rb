class Song < ApplicationRecord
  belongs_to :genre

  has_many :playlist

  mount_uploader :image, AlbumUploader
end
