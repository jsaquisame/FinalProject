class Song < ApplicationRecord
  belongs_to :genre

  has_many :playlist
end
