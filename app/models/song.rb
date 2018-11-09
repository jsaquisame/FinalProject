class Song < ApplicationRecord
  belongs_to :genre

  has_many :playlist

  mount_uploader :image, AlbumUploader

  validates :song_name, presence: true
  validates :song_artist, presence: true
  validates :popularity, numericality: { only_integer: true }
  validates :album, presence: true
  validates :language, presence: true
end
