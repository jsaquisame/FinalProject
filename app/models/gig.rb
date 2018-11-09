class Gig < ApplicationRecord
  belongs_to :gig_type
  belongs_to :client
  belongs_to :band

  has_many :songs
  has_many :clients
  
  validates :fee, presence: true
  validates :about, presence: true
  validates :date, presence: true
end
