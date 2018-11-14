class Genre < ApplicationRecord
    validates :genre_name, presence: true
    def name
        genre_name
    end
end
