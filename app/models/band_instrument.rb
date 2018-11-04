class BandInstrument < ApplicationRecord
  belongs_to :band
  belongs_to :BandMember
  
end
