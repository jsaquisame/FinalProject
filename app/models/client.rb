class Client < ApplicationRecord
    has_many :gigs
    has_many :band, through: :gigs
end
