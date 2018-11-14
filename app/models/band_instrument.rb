class BandInstrument < ApplicationRecord
  belongs_to :band_member
  belongs_to :band

  def name
    bi_name
  end
end
