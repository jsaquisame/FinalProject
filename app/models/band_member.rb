class BandMember < ApplicationRecord
  belongs_to :band

  has_many :band_instruments
  def name
    bi_name
  end
end
