class Gig < ApplicationRecord
  belongs_to :gig_type
  belongs_to :client
  belongs_to :band
end
