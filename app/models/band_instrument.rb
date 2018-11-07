class BandInstrument < ApplicationRecord
  belongs_to :band_member
  belongs_to :band
end
