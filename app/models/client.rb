class Client < ApplicationRecord
    has_many :gigs
    has_many :band, through: :gigs

    validates :client_name, presence: true
    validates :client_contact_number, presence: true
    validates :client_email, presence: true
    
end
