class Band < ApplicationRecord
    has_many :band_instruments, dependent: :destroy

    has_many :gigs
    has_many :clients, through: :gigs
    
    mount_uploader :image, LogoUploader

    validates :band_name, presence: true
    validates :founded, presence: true
    validates :bandtype, presence: true
    validates :band_contact_number, presence: true
    validates :band_biography, presence: true

    def name
        band_name
    end
end
