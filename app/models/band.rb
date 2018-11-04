class Band < ApplicationRecord
    has_many :band_instruments, dependent: :destroy
end
