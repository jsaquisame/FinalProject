class GigType < ApplicationRecord

    
    validates :event, presence: true
    validates :privacy, presence: true
end
