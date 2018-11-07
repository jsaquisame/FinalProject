class Band < ApplicationRecord
    has_many :band_instruments, dependent: :destroy

    has_many :gigs
    has_many :clients, through: :gigs
    
    mount_uploader :image, LogoUploader

end
